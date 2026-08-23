# Maintainer Notes

How this list stays accurate. Contributors want [contributing.md](contributing.md)
instead.

## Checks that run on every pull request

Two workflows guard the list:

- `lint.yml` runs `awesome-lint`, which enforces the Awesome specification: the
  heading, the badge, the table of contents, the entry format, and the presence
  of a license, a code of conduct, and contribution guidelines.
- `link-check.yml` runs `lychee` over `readme.md` on every pull request and again
  every Monday at 06:00 UTC.

Run both locally before merging anything large:

```bash
npx --yes awesome-lint
```

```bash
./scripts/verify-links.sh
```

The link script checks GitHub repositories with `git ls-remote` rather than HTTP.
Repository pages return 429 to unauthenticated crawlers once you check more than
a few dozen, and `git ls-remote` has no such limit. Non-GitHub links still go
through `curl`.

Two `awesome-lint` rules cannot pass on a fresh clone with no remote.
`awesome-github` needs a GitHub remote. `awesome-git-repo-age` needs the
repository to be at least 30 days old. Both pass once the repository is published
and old enough, which also gates any submission to the
[Awesome](https://github.com/sindresorhus/awesome) index.

The table of contents is a third trap. `awesome-lint` rejects `Contributing` and
`Related Lists` as entries in it, so those sections stay out of the contents
block even though they carry an `##` heading.

## Reviewing a suggestion

Work through four questions in order, and stop at the first no:

1. **Is it in scope?** The list covers language models, agents, and the Model
   Context Protocol applied to materials science or chemistry. General machine
   learning for materials belongs to
   [Awesome Materials Informatics](https://github.com/tilde-lab/awesome-materials-informatics)
   and [Best-of Atomistic Machine Learning](https://github.com/JuDFTteam/best-of-atomistic-machine-learning).
   Sending someone to the better list is a service, not a rejection.
2. **Does the link resolve, and does the repository match the claim?** Open it.
   A description written from a search snippet is often wrong, and a slug that
   looks plausible sometimes does not exist at all.
3. **Is it real?** Look for a README that explains usage, code beyond a template,
   and a commit history. A repository holding only a manifest and a stub is not
   an entry.
4. **Is it alive, or does it still matter?** Archived projects stay only when
   researchers still reference them, and the description says so.

Verify before merging, every time. The value of a curated list is that a reader
does not have to repeat this work.

## Writing the description

One line, under about 110 characters, capital letter first, period last. Say what
the project does. Skip the praise, because a list of superlatives helps nobody
choose. Take the wording from the project's own README rather than from a search
result.

## Keeping entries honest over time

Projects rot. Run these on a schedule:

| Cadence | Task |
| --- | --- |
| Weekly | Read the scheduled link check and fix anything it flags |
| Quarterly | Re-read entries marked archived and confirm they still earn a place |
| Quarterly | Sweep the field for new work, especially MCP servers, which appear fast |
| Yearly | Re-read the scope statement against what the list has become |

When a project moves, update the link rather than deleting the entry. GitHub
redirects old slugs, which hides breakage from the link checker, so a moved
project can sit with a stale owner name for years. `grobidOrg/grobid` is one
example already in the list.

When a project is superseded, link the successor and say so in the description.
`asyncroscopy` replacing `pyAutoMic` is the pattern.

## Adding a section

A new section needs at least three entries. Below that, put the entries in the
closest existing section. Every new `##` or `###` heading also needs a matching
line in the table of contents, except `Contributing` and `Related Lists`.

## Self-submissions

The maintainer's own tools appear in the list. So can anyone else's. The bar is
the same for both, and the four review questions above do not change based on who
wrote the code.
