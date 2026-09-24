## Campaign context and required reading

On the `experiment/shepherd-control` branch, the directory `1-math-control-remove-before-merge` contains the plan (`math-tool-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.

Read the entire plan before working. Then carefully re-read these exact headings:

- `## Ignorance reduction`
- `### Repository-owned validation`
- `### Output and ordering contracts`
- `## Implementation`
- `### 1. Implement Fibonacci with unit and isolated CLI coverage`
- `### 2. Add factorial and operation dispatch`

The resolved repository-validation decision is that the only canonical acceptance command is `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1`. The existing pull-request workflow `.github/workflows/shepherd-task-math-tool.yml` installs exactly Pester 5.7.1 and invokes that repository-owned runner. Do not replace, bypass, or duplicate that acceptance path.

The resolved behavior contract is that inputs are non-negative integers, functions return numeric values without incidental output, and direct CLI execution writes exactly one result line: either `Fibonacci(N) = value` or `Factorial(N) = value`. The research recorded in the plan established that the implementation remains in repository-root `math-tool.ps1` and its regression suite remains in repository-root `math-tool.Tests.ps1`; implement from these findings rather than treating research artifacts as production templates.

## Branch and execution order

Use `experiment/shepherd-control` from remote `origin` as the base branch for the pull request. This is task 2 of 2 and depends on task 1 already being merged. Tasks are assigned, completed, and merged serially in the listed plan order. Do not begin work until this issue is assigned and the Fibonacci task is present on the base branch.

## Implement

Extend the existing repository-root `math-tool.ps1` without regressing the merged Fibonacci contract:

- Add a pure `Get-Factorial` function for non-negative integer inputs. It must return only the numeric result, with no labels, progress text, or incidental pipeline output.
- Add an `Operation` script parameter that dispatches between `fibonacci` and `factorial` while retaining the `N` parameter.
- Preserve the existing Fibonacci calculation and exact direct-CLI output `Fibonacci(N) = value`.
- For factorial dispatch, write exactly one direct-CLI stdout line in the form `Factorial(N) = value`.
- Reject values outside the supported operation choices or non-negative integer input contract through normal PowerShell parameter validation; do not silently select an unrelated operation.

Extend `math-tool.Tests.ps1` into a combined regression suite:

- Retain the task 1 Fibonacci unit and isolated child-process CLI coverage.
- Add dot-sourced unit coverage for `Get-Factorial` at `N=0`, `N=1`, and at least one small representative value.
- Add isolated child-`pwsh` coverage for operation dispatch and exact CLI output for both `fibonacci` and `factorial`.
- Assert successful process exit and exact single-line stdout for representative dispatch cases.

## Completion gates

- `Get-Factorial 0` and `Get-Factorial 1` each return numeric `1`; the representative factorial case returns the mathematically correct value.
- Both pure functions emit no incidental output beyond their numeric return values.
- Fibonacci unit and direct-CLI tests from task 1 remain passing and retain their exact output contract.
- Dispatch selects the requested operation, and isolated child-process tests prove both exact output forms with no extra stdout.
- Invalid operation selection cannot silently run Fibonacci or factorial.
- `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1` exits zero for the combined regression suite using the committed Pester 5.7.1 validation path.
- The pinned pull-request CI passes.

## Out of scope

- Do not add operations other than Fibonacci and factorial.
- Do not redesign the small command-line tool, add dependencies, or expand scope beyond `math-tool.ps1` and `math-tool.Tests.ps1`.
- Do not change the canonical test runner, workflow, or pinned Pester version.
- Do not weaken or remove task 1 regression coverage.
