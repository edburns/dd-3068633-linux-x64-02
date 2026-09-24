## Campaign context and required reading

On the `experiment/shepherd-control` branch, the directory `1-math-control-remove-before-merge` contains the plan (`math-tool-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.

Read the entire plan before working. Then carefully re-read these exact headings:

- `## Ignorance reduction`
- `### Repository-owned validation`
- `### Output and ordering contracts`
- `## Implementation`
- `### 1. Implement Fibonacci with unit and isolated CLI coverage`

The resolved repository-validation decision is that the only canonical acceptance command is `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1`. The existing pull-request workflow `.github/workflows/shepherd-task-math-tool.yml` installs exactly Pester 5.7.1 and invokes that repository-owned runner. Do not replace, bypass, or duplicate that acceptance path.

The resolved behavior contract is that inputs are non-negative integers, functions return numeric values without incidental output, and direct CLI execution writes exactly one result line to stdout. For this task that line is `Fibonacci(N) = value`. The research recorded in the plan established that production and test work belongs in the repository-root files `math-tool.ps1` and `math-tool.Tests.ps1`; implement from the specification rather than treating research artifacts as production templates.

## Branch and execution order

Use `experiment/shepherd-control` from remote `origin` as the base branch for the pull request. This is task 1 of 2. Tasks are assigned, completed, and merged serially in the listed plan order. Do not begin work until this issue is assigned. Task 2 must not begin until this task is merged into the base branch.

## Implement

Create repository-root `math-tool.ps1` with:

- A script parameter named `N` accepting non-negative integer input.
- A pure `Get-Fibonacci` function that returns the Fibonacci value as a number and emits no labels, progress text, or other incidental pipeline output.
- Direct-script behavior that invokes the function and writes exactly one stdout line in the form `Fibonacci(N) = value`.

Create repository-root `math-tool.Tests.ps1` with:

- Dot-sourced unit coverage of `Get-Fibonacci`.
- Unit cases for `N=0`, `N=1`, and at least one small representative value beyond the base cases.
- Isolated direct-CLI coverage that starts a child `pwsh` process rather than relying on the dot-sourced test session.
- Assertions that the child process succeeds and its stdout is exactly the required single result line for the covered values.

Keep the implementation deterministic and small. Ensure dot-sourcing the script for unit tests does not produce direct-execution output.

## Completion gates

- `Get-Fibonacci 0` returns numeric `0`, `Get-Fibonacci 1` returns numeric `1`, and the representative case returns the mathematically correct value.
- Function calls produce no incidental output beyond the returned number.
- Direct CLI execution for each covered case exits successfully and produces exactly one line with no extra stdout before or after `Fibonacci(N) = value`.
- The isolated CLI tests invoke the repository script through a child `pwsh` process, so they detect regressions hidden by dot-sourcing.
- `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1` exits zero using the committed Pester 5.7.1 validation path.
- The pinned pull-request CI passes.

## Out of scope

- Do not implement factorial, operation dispatch, or task 2 behavior.
- Do not change the canonical test runner, workflow, or pinned Pester version.
- Do not add unrelated math operations, dependencies, generated artifacts, or documentation.
- Keep changes limited to `math-tool.ps1` and `math-tool.Tests.ps1`.
