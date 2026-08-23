# Security Policy

This repository ships no executable code. Its security surface is the set of
links it publishes, so the realistic risk is an entry that points somewhere
harmful.

## What to report

Report any of the following:

- A linked repository that distributes malware
- A project account that has been taken over, or a repository transferred to a
  new owner who replaced its contents
- A link that redirects somewhere other than its stated destination
- An entry that impersonates a project or its maintainers
- A typosquatted repository or package name

## How to report

Do not open a public issue. A public report tells other people where the bad
link is before it can be removed.

Use GitHub's [private vulnerability reporting](https://github.com/dfieser/awesome-materials-ai/security/advisories/new),
or send email to <dfieser9@gmail.com> with `awesome-materials-ai` in the subject
line. Include the entry name, the link, and what you observed.

Expect a first response within seven days.

## What happens next

A confirmed malicious entry comes out of the list immediately. Removal does not
wait for the normal pull request review, and the commit message records what
turned up. When someone takes over a project rather than writing it maliciously,
the entry points at the last trustworthy fork. If no fork is trustworthy, the
entry goes away until the situation resolves.

An unmaintained project is ordinary maintenance, not a security problem. Open an
issue with the
[broken entry template](https://github.com/dfieser/awesome-materials-ai/issues/new?template=fix-entry.yml)
for those.
