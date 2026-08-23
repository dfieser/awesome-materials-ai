#!/usr/bin/env bash
#
# Verify every link in the list.
#
# GitHub repositories go through `git ls-remote` rather than HTTP, because
# repository pages start returning 429 to unauthenticated crawlers after a few
# dozen requests. Everything else goes through curl.
#
# Usage: ./scripts/verify-links.sh [readme.md]

set -uo pipefail

readme="${1:-readme.md}"
failures=0

if [ ! -f "${readme}" ]; then
  printf 'No such file: %s\n' "${readme}" >&2
  exit 2
fi

printf 'Checking GitHub repositories\n'
while read -r repo; do
  [ -z "${repo}" ] && continue
  if git ls-remote --exit-code "https://github.com/${repo}" HEAD >/dev/null 2>&1; then
    printf '  ok    %s\n' "${repo}"
  else
    printf '  FAIL  %s\n' "${repo}"
    failures=$((failures + 1))
  fi
done < <(grep -oE 'https://github\.com/[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+' "${readme}" \
         | sed 's|https://github.com/||' \
         | sort -u)

printf '\nChecking other links\n'
while read -r url; do
  [ -z "${url}" ] && continue
  status=$(curl -sS -o /dev/null -w '%{http_code}' -L --max-time 30 \
           -A 'Mozilla/5.0 (awesome-materials-ai link check)' "${url}" 2>/dev/null || echo 000)
  case "${status}" in
    # 403 and 429 mean bot protection, not a dead link. materialsproject.org
    # sits behind Cloudflare and answers 403 to any command line client.
    2??|3??|403|429)
      printf '  ok    %s (%s)\n' "${url}" "${status}"
      ;;
    *)
      printf '  FAIL  %s (%s)\n' "${url}" "${status}"
      failures=$((failures + 1))
      ;;
  esac
done < <(grep -oE 'https://[^) ]+' "${readme}" \
         | grep -v 'github\.com' \
         | sed 's/[.,]$//' \
         | sort -u)

printf '\n'
if [ "${failures}" -gt 0 ]; then
  printf '%d link(s) failed.\n' "${failures}"
  exit 1
fi
printf 'All links resolve.\n'
