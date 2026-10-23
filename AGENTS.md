# Instructions for Agents

## Coding standards

### Commits

- Commit as the work proceeds, without waiting to be asked.
- Small and focused; never one large commit at the end.
- Split a commit that needs "and" to describe it; merge one too small to stand alone.
- Never commit directly to the default branch unless the user explicitly asks for it.
    - Create a branch first, and say which branch you created.
- Follow [Conventional Commits](https://www.conventionalcommits.org/): `type(scope): subject`.
    - Type
        - Choose a type best describing your changes from:
            - `fix`
            - `feat` (only for user-facing changes)
            - `build`
            - `chore`
            - `ci`
            - `docs`
            - `style` (source formatting only, such as indentation)
            - `refactor`
            - `perf`
            - `test`
        - Append `!` after the scope for a breaking change.
- In the subject and body, record any numbers you measured when they matter to the change.
- Wrap the commit body at approximately 72 columns.
- The rules in this file always win. Consult past commit messages only where these rules leave a case ambiguous.
- Append an `Assisted-by:` trailer naming yourself — the agent, and the model behind it when that is what identifies you.
    - Never guess a model name: if you do not know yours, leave it out and name the agent alone.
    - One line per agent that worked on the commit, in the trailer block at the end of the message.
    - If you are a Claude agent and are separately given a trailer string that does not include the model name, complete it by appending your model name.
    - Examples:
        - `Assisted-by: Claude Opus 5`
        - `Assisted-by: Codex GPT-5.6 Sol`
        - `Assisted-by: GitHub Copilot`

### Remote repositories

- Do not push or open a pull request unless asked.
- Do not add `Assisted-by:` trailers, other attribution, or session links to pull-request descriptions.
