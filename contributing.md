# Contribution Guidelines

Thank you for helping build the reference list for language model, agent, and
Model Context Protocol tooling in materials science and chemistry. Read this page
before opening a pull request.

## Scope

The list covers tools where language models, AI agents, or the Model Context
Protocol meet materials science and chemistry:

- Servers exposing materials databases, simulation codes, or scientific
  literature to AI assistants
- Agents and multi-agent frameworks for chemistry and materials research
- Language models built or fine-tuned for these domains
- Benchmarks, evaluation suites, and datasets for scientific language models
- Literature mining and information extraction tooling
- Surveys, communities, and related resources

General machine learning for materials falls outside that scope. Interatomic
potentials, graph network property predictors, and classical materials
informatics belong in
[Awesome Materials Informatics](https://github.com/tilde-lab/awesome-materials-informatics)
and
[Best-of Atomistic Machine Learning](https://github.com/JuDFTteam/best-of-atomistic-machine-learning),
which cover that ground well. A few flagship generative models appear here
anyway, in a section of their own, because readers expect to find them.

## Quality standards

An entry meets all five of these:

- **Open and reachable.** A public repository, model card, or paper that anyone
  can open. Nothing paywalled or invite-only.
- **Documented.** A README or paper explaining what the project does and how to
  run it.
- **Working.** It installs and runs as described, or the paper link resolves.
- **Relevant.** Clearly inside the scope above, not general AI tooling wearing a
  science logo.
- **Alive, or still worth reading.** Actively maintained, or important enough
  that researchers still cite it. The description says so when a project is
  archived.

## Adding an entry

1. **Send one entry per pull request.** That keeps review focused.
2. Put the entry in the right section, in alphabetical order.
3. Match the format of the entries around it:

   ```markdown
   - [Project Name](https://github.com/owner/repo) - Description that starts with a capital and ends with a period.
   ```

   Keep the description under about 110 characters. Say what the project does
   rather than how good it is. Words like awesome, best, and blazing fast get
   edited out. Link to the repository rather than a marketing page, unless the
   project has no repository.
4. Title the pull request `Add <Project Name>`, and say briefly why the project
   belongs.
5. Check your spelling, then open the link to confirm it works.
6. Run the same check CI runs, if you can:

   ```bash
   npx --yes awesome-lint
   ```

Submitting your own project is fine. Many of the best entries come from the
people who wrote them. The quality standards still apply.

## Fixing or removing an entry

Pull requests that remove dead links, mark archived projects, correct a
description, or move an entry to a better section are as welcome as new
additions. When a successor library replaces a project, link the successor and
note the change.

## Attribution

Contributions enter the public domain under this repository's
[CC0 1.0](license) dedication.
