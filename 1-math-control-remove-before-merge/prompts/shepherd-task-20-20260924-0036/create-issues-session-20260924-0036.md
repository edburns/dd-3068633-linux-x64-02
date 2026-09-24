# Copilot CLI Session

> [!NOTE]
> - **Session ID:** `1a451360-7355-4c7b-9eca-312bf36c504a`  
> - **Started:** 9/24/2026, 12:36:30 AM  
> - **Duration:** 1m 29s  
> - **Exported:** 9/24/2026, 12:37:59 AM  

---

<sub>2s</sub>

### User

Invoke skill `shepherd-task-20-create-issues-from-plan` with these inputs:

- CAMPAIGN_ID: 6771849a-e490-4c72-b2f1-edc26024d9d5
- LESSON_PROPAGATION: off
- REPO: edburns/dd-3068633-linux-x64-02
- BASE_BRANCH: experiment/shepherd-control
- PARENT_ISSUE: 1
- PLAN_DIRECTORY: 1-math-control-remove-before-merge
- PLAN_FILE_NAME: math-tool-ignorance-reduction-plan.md
- QUESTIONS_SECTION: ## Ignorance reduction
- IMPLEMENTATION_SECTION: ## Implementation
- EXPECTED_TASK_COUNT: 2
- BASE_REMOTE: origin
- LOG_DIRECTORY: /home/edburns/workareas/dd-3068633-linux-x64-02-shepherd-control/1-math-control-remove-before-merge/prompts/shepherd-task-20-20260924-0036
- DRAFT_VALIDATOR: /home/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh
- ISSUE_BODY_VERIFIER: /home/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh

Fixture pagination response contract (mandatory):

- `gh api ... --paginate --slurp` returns a JSON array of page payloads, so a
  one-page response has the shape `[[{...}]]`, not `[{...}]`.
- Before indexing child issue fields such as `.id`, normalize the response to
  one flat issue array exactly once.
- In Bash, use:
  `jq 'if length == 0 then [] elif all(.[]; type == "array") then add else . end'`.
- In PowerShell, capture the `gh` output and `$LASTEXITCODE` first, then pass
  the complete JSON through the same `jq` normalization before
  `ConvertFrom-Json`.
- Use the normalized flat array for the pre-creation baseline, final child
  count/order checks, and failure reconciliation. Do not apply `add` a second
  time to an already-flat array.

---

<sub>3s</sub>

### `skill`

**shepherd-task-20-create-issues-from-plan**

<details>
<summary>Arguments</summary>

```json
{
  "skill": "shepherd-task-20-create-issues-from-plan"
}
```

</details>

```
Skill "shepherd-task-20-create-issues-from-plan" loaded successfully. Follow the instructions in the skill context.
```


---

<sub>7s</sub>

### Copilot

I’m validating the campaign inputs, plan structure, GitHub parent, and issue-type support before drafting any mutations.

---

<sub>15s</sub>

### `view`

**view the file at /home/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/01-1682-java-tool-ergonomics.md.**

/home/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/01-1682-java-tool-ergonomics.md

<details>
<summary>15 lines</summary>

```
# Example 01: 1682-java-tool-ergonomics-prompts-remove-before-merge

Read `copilot-sdk/1682-java-tool-ergonomics-prompts-remove-before-merge/dd-3018003-ignorance-reduction-for-implementation-plan.md` (the plan) to get the context.

✅✅Pay very close attention to each **Resolution:** to the questions in `Phase 3 — Ignorance reduction: questions to answer before writing code`.

In this session, we are creating issues of type **Task** as children of Epic https://github.com/github/copilot-sdk/issues/1682 . These issues correspond to the sub-sections in `## Phase 4 — Implementation (the build order)`.

I want you to use `gh` to create issues as sub-issues of 1682.

- I will dispatch these issues by assigning them to an agent. Leave them unassigned for now.

- The description you put in the issues you create is the specification for the work the agent assigned to the issue must do. Therefore, you need to be very specific and targeted when writing the description.

- Set the type to **Task**.

- Each issue will be worked on and resolved in serial. You can assume:
  - All issues will operate in this topic branch of `upstream`: `edburns/1682-java-tool-ergonomics`.

  - The assignee agent has access to the topic branch and, most importantly, to the prompts in the directory `1682-java-tool-ergonomics-prompts-remove-before-merge`, which includes the plan. Therefore, you can instruct the agent to access the plan by reference, you don't need to reference it by value directly in the issue.

- The sub-sections of `## Phase 4 — Implementation (the build order)` have essential details for each corresponding **Task**.

- Instruct the agent to read the entire plan before working.

- Instruct the agent to carefully re-read the relevant sections of the of the plan. ❌❌You can't just say, "read the relevant sections of the plan". ✅✅In the description of the issue, list exactly what sections of the plan apply to this particular issue.
- Though the sub-sections of `## Phase 4 — Implementation (the build order)` have essential details for each corresponding **Task**, I want you to carefully consider if there additional gating tests you can add so that as the agent proceeds from one task to the next, the likelihood of rework is reduced.
```

</details>


---

<sub>15s</sub>

### `view`

**view the file at /home/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/02-1810-java-tool-as-lambda.md.**

/home/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/02-1810-java-tool-as-lambda.md

<details>
<summary>12 lines</summary>

```
# Example 02: 1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge

Carefully read the plan `copilot-sdk/1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md`.

We have completed Phases 1 - 3. We are now on Phase 4.

For each sub item in Phase 4, file a child issue of Feature #1810.

Use `gh` to look at Epic #1682 and its child issues for the standard of verbosity and concreteness for issue descriptions.

The issue should be assignable to a coding agent and there must be sufficient detail in the description for the agent to proceed to completion.

Pull out the specific relevant content from Phase 3 as it applies to this current issue in Phase 4.

Tell the agent to take `edburns/1810-java-tool-ergonomics-tool-as-lambda` as the base branch. When I assign the issue to the coding agent, I will set this as the base branch.

Tell the agent to read `1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md`, which is present on the branch, for context.

Tell the agent which sub-item within Phase 4 they are solving.

Tell the agent that each issue will be assigned, resolved and merged to the base branch in the order in which they appear in the plan.

No work is to start until I assign each issue to the coding agent, in turn.
```

</details>


---

<sub>15s</sub>

### `view`

**view the file at /home/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/03-dd-3017826-java-real-estate-demo.md.**

/home/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/03-dd-3017826-java-real-estate-demo.md

<details>
<summary>14 lines</summary>

```
# Example 03: dd-3017826-java-real-estate-demo-remove-before-merge

Read `dd-3017826-java-real-estate-demo-remove-before-merge\dd-3017826-java-real-estate-demo-ignorance-reduction-plan.md` (the plan) to get the context.

✅✅Pay very close attention to each **Resolution:** to the questions in `Phase 2 — Ignorance reduction: questions to answer before writing code`.

In this session, we are creating sub-issues as children of https://github.com/edburns/Build26-BRK206-your-agent-anywhere-multiclient-multidevice-with-github-copilot-sdk/issues/2 . These issues correspond to the sub-sections in `## Phase 3 — Implementation (build order)`.

I want you to use `gh` to create issues as sub-issues of #2.

- I will dispatch these issues by assigning them to an agent. Leave them unassigned for now.

- The description you put in the issues you create is the specification for the work the agent assigned to the issue must do. Therefore, you need to be very specific and targeted when writing the description.

- Each issue will be worked on and resolved in serial. You can assume:
  - All issues will operate in this topic branch of `origin`: `edburns/2-build-out-demo`.

  - The assignee agent has access to the topic branch and, most importantly, to the prompts in the directory `dd-3017826-java-real-estate-demo-remove-before-merge`, which includes the plan. Therefore, you can instruct the agent to access the plan by reference, you don't need to reference it by value directly in the issue.

- The sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue.

- Instruct the agent to read the entire plan before working.

- Instruct the agent to carefully re-read the relevant sections of the of the plan. ❌❌You can't just say, "read the relevant sections of the plan". ✅✅In the description of the issue, list exactly what sections of the plan apply to this particular issue.
- Though the sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue, I want you to carefully consider if there additional gating tests you can add so that as the agent proceeds from one task to the next, the likelihood of rework is reduced.
```

</details>


---

<sub>15s</sub>

### `view`

**view the file at /home/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/04-28-python-agent-demo.md.**

/home/edburns/.copilot/skills/shepherd-task-20-create-issues-from-plan/examples/04-28-python-agent-demo.md

<details>
<summary>16 lines</summary>

```
# Example 04: 28-python-agent-demo-remove-before-merge

Read `28-python-agent-demo-remove-before-merge/28-python-agent-demo-ignorance-reduction-plan.md` (the plan) to get the context.

✅✅Pay very close attention to each **Resolution:** to the questions in `Phase 2 — Ignorance reduction: questions to answer before writing code`. These pertain to the implementation tasks in Phase 3. ✅✅✅ Include relevant spike findings as self-contained prose in the issue description; do not direct the agent to spike directories or source files.

In this session, we are creating sub-issues as children of https://github.com/edburns/Build26-BRK206-your-agent-anywhere-multiclient-multidevice-with-github-copilot-sdk/issues/28 . These issues correspond to the sub-sections in `## Phase 3 — Implementation (build order)`.

I want you to use `gh` to create issues as sub-issues of #28

- I will dispatch these issues by assigning them to an agent. Leave them unassigned for now.

- The description you put in the issues you create is the specification for the work the agent assigned to the issue must do. Therefore, you need to be very specific and targeted when writing the description.

- Again, ✅✅For each **Resolution:** to the questions in `Phase 2 — Ignorance reduction: questions to answer before writing code`, include the relevant Resolution values in the issue description. These pertain to the implementation tasks in Phase 3. ✅✅✅ State relevant spike findings directly in the issue body with enough detail to implement them without reading spike code.

- For tasks dealing with the UI, make sure to refer to the relevant screengrabs, but only ones within `28-python-agent-demo-remove-before-merge/`.

- Each issue will be worked on and resolved in serial. You can assume:
  - All issues will operate in this topic branch of `origin`: `edburns/28-python-agent-demo`.

  - The assignee agent has access to the topic branch and, most importantly, to the prompts in the directory `28-python-agent-demo-remove-before-merge/`, which includes the plan. Therefore, you can instruct the agent to access the plan by reference, you don't need to reference it by value directly in the issue.

- The sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue.

- Instruct the agent to read the entire plan before working.

- Instruct the agent to carefully re-read the relevant sections of the plan. ❌❌You can't just say, "read the relevant sections of the plan". ✅✅In the description of the issue, list exactly what sections of the plan apply to this particular issue.
- Though the sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue, I want you to carefully consider if there additional gating tests you can add so that as the agent proceeds from one task to the next, the likelihood of rework is reduced.
```

</details>


---

<sub>15s</sub>

### `bash`

**Validate invocation and GitHub inputs**

$ set -euo pipefail
REPO='edburns/dd-3068633-linux-x64-02'
BASE_BRANCH='experiment/shepherd-control'
BASE_REMOTE='origin'
PARENT_ISSUE='1'
LOG_DIRECTORY='/home/edburns/workareas/dd-3068633-linux-x64-02-shepherd-control/1-math-control-remove-before-merge/prompts/shepherd-task-20-20260924-0036'
DRAFT_VALIDATOR='/home/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh'
ISSUE_BODY_VERIFIER='/home/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh'
[[ "$PARENT_ISSUE" =~ ^[1-9][0-9]*$ ]]
[[ "$LOG_DIRECTORY" = /* && -d "$LOG_DIRECTORY" && -w "$LOG_DIRECTORY" ]]
mkdir -p "$LOG_DIRECTORY/issue-bodies"
[[ "$DRAFT_VALIDATOR" = /* && -x "$DRAFT_VALIDATOR" ]]
[[ "$ISSUE_BODY_VERIFIER" = /* && -x "$ISSUE_BODY_VERIFIER" ]]
default_branch="$(gh api "repos/$REPO" --jq '.default_branch')"
[[ "$BASE_BRANCH" != main && "$BASE_BRANCH" != "$default_branch" ]]
git show-ref --verify --quiet "refs/heads/$BASE_BRANCH" || git show-ref --verify --quiet "refs/remotes/$BASE_REMOTE/$BASE_BRANCH"
git remote get-url "$BASE_REMOTE"
git remote -v
gh api "repos/$REPO/issues/$PARENT_ISSUE" --jq '{number,state,title,repository_url}'
gh api "repos/$REPO" --jq '{default_branch,owner:{login:.owner.login,type:.owner.type}}'
printf 'DEFAULT_BRANCH=%s\n' "$default_branch"
printf 'LOG_DIRECTORY=%s\n' "$LOG_DIRECTORY"

<details>
<summary>8 lines</summary>

```
git@github.com:edburns/dd-3068633-linux-x64-02.git
origin	git@github.com:edburns/dd-3068633-linux-x64-02.git (fetch)
origin	git@github.com:edburns/dd-3068633-linux-x64-02.git (push)
{"number":1,"repository_url":"https://api.github.com/repos/edburns/dd-3068633-linux-x64-02","state":"open","title":"[Campaign][off] shepherd-task simple-math control"}
{"default_branch":"main","owner":{"login":"edburns","type":"User"}}
DEFAULT_BRANCH=main
LOG_DIRECTORY=/home/edburns/workareas/dd-3068633-linux-x64-02-shepherd-control/1-math-control-remove-before-merge/prompts/shepherd-task-20-20260924-0036
<shellId: 0 completed with exit code 0>
```

</details>


---

<sub>15s</sub>

### `bash`

**Read plan and campaign resources**

$ set -euo pipefail
BASE_BRANCH='experiment/shepherd-control'
PLAN_DIRECTORY='1-math-control-remove-before-merge'
PLAN_FILE_NAME='math-tool-ignorance-reduction-plan.md'
git show "$BASE_BRANCH:$PLAN_DIRECTORY/$PLAN_FILE_NAME"
printf '\n---CAMPAIGN---\n'
git show "$BASE_BRANCH:$PLAN_DIRECTORY/shepherd-campaign.json"
printf '\n---LESSONS-EXISTS---\n'
git cat-file -e "$BASE_BRANCH:$PLAN_DIRECTORY/campaign-lessons.md" && echo yes
printf '\n---PLAN-TREE---\n'
git ls-tree -r --name-only "$BASE_BRANCH" -- "$PLAN_DIRECTORY"

<details>
<summary>63 lines</summary>

```
# PowerShell math-tool control campaign

Build the fixture in two cheap, serial tasks. The repository already contains
deterministic CI pinned to Pester 5.7.1. The acceptance command for every task
is `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1`. Task 2 starts only after task 1 is merged.

## Ignorance reduction

### Repository-owned validation

**Question:** What command and environment define acceptance?

**Resolution:** The committed canonical command is
`pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1`. The baseline workflow
`.github/workflows/shepherd-task-math-tool.yml` installs exactly Pester
5.7.1 and invokes that repository-owned runner. Do not replace or bypass it.

### Output and ordering contracts

**Question:** What externally observable behavior and dependency order are required?

**Resolution:** Direct CLI execution writes exactly one result line to stdout:
`Fibonacci(N) = value` or `Factorial(N) = value`. Functions return the
numeric value without incidental output. Inputs are non-negative integers.
Implementation is serial: task 2 depends on merged task 1. The implementation
and test files are repository-root `math-tool.ps1` and
`math-tool.Tests.ps1`.

## Implementation

### 1. Implement Fibonacci with unit and isolated CLI coverage

Create `math-tool.ps1` with parameter `N` and a pure `Get-Fibonacci`
function. Direct execution must print exactly `Fibonacci(N) = value`.
Create `math-tool.Tests.ps1` containing dot-sourced unit tests for the
function and isolated child-`pwsh` process tests for direct CLI behavior.
Cover N=0, N=1, and a small representative value. Keep changes limited to the
math tool and its tests.

Acceptance: `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1` exits zero and the pinned pull-request CI
passes.

### 2. Add factorial and operation dispatch

After task 1 is merged, extend the same script with a pure `Get-Factorial`
function and an `Operation` parameter that dispatches between `fibonacci`
and `factorial` while retaining `N`. Preserve Fibonacci behavior. Cover
factorial edge cases 0 and 1 plus a small representative value. Keep the
interface and tests objective and small; the issue does not prescribe how to
extend the tests.

Acceptance: `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1` exits zero for the combined regression suite
and the pinned pull-request CI passes.

---CAMPAIGN---
{
  "schemaVersion": 1,
  "campaignId": "6771849a-e490-4c72-b2f1-edc26024d9d5",
  "campaignIssueNumber": 1,
  "campaignShortname": "math-control",
  "repository": "edburns/dd-3068633-linux-x64-02",
  "baseBranch": "experiment/shepherd-control",
  "lessonPropagation": "off",
  "campaignMetadataDirectory": "1-math-control-remove-before-merge",
  "lessonsFile": "campaign-lessons.md",
  "createdBy": {
    "shepherdTaskVersion": "1.0.4",
    "stageOutcomeProtocolVersion": 1
  },
  "createdAt": "2026-09-24T00:36:27Z"
}

---LESSONS-EXISTS---
yes

---PLAN-TREE---
1-math-control-remove-before-merge/campaign-lessons.md
1-math-control-remove-before-merge/math-tool-ignorance-reduction-plan.md
1-math-control-remove-before-merge/shepherd-campaign.json
1-math-control-remove-before-merge/shepherd-test-experiment.json
<shellId: 1 completed with exit code 0>
```

</details>


---

<sub>15s</sub>

### `bash`

**Read normalized child baseline**

$ set -euo pipefail
REPO='edburns/dd-3068633-linux-x64-02'
PARENT_ISSUE='1'
out="$(gh api "repos/$REPO/issues/$PARENT_ISSUE/sub_issues" --paginate --slurp)"
printf '%s' "$out" | jq 'if length == 0 then [] elif all(.[]; type == "array") then add else . end'

```
[]
<shellId: 2 completed with exit code 0>
```


---

<sub>18s</sub>

### Copilot

Validation passed: the base branch is valid, the parent is open, both resolutions are substantive, the two implementation headings match the expected count, and this user-owned repository will create children **without an issue type**. I’m now persisting both complete issue specifications and checking them before any GitHub mutation.

---

<sub>22s</sub>

### `view`

**view the file at /home/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh.**

/home/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh

<details>
<summary>66 lines</summary>

```
#!/usr/bin/env bash
# shepherd-task-version: 1.0.4

set -euo pipefail

[[ $# -eq 3 ]] || {
    echo "Usage: $0 <body-directory> <expected-count> <off|campaign>" >&2
    exit 1
}

body_directory="$1"
expected_count="$2"
lesson_propagation="$3"

[[ -d "$body_directory" ]] || {
    echo "Stage-20 body directory does not exist: $body_directory" >&2
    exit 1
}
[[ "$expected_count" =~ ^[1-9][0-9]*$ ]] || {
    echo "Expected count must be a positive integer." >&2
    exit 1
}
[[ "$lesson_propagation" == "off" || "$lesson_propagation" == "campaign" ]] || {
    echo "Lesson propagation must be off or campaign." >&2
    exit 1
}

body_files=()
while IFS= read -r -d '' body_file; do
    body_files+=("$body_file")
done < <(
    find "$body_directory" -maxdepth 1 -type f -name '*-body.md' \
        ! -name '*-observed-body.md' -print0
)
[[ ${#body_files[@]} -eq $expected_count ]] || {
    echo "Expected $expected_count persisted stage-20 body files; found ${#body_files[@]}." >&2
    exit 1
}

required_headings=(
    '## Campaign context and required reading'
    '## Branch and execution order'
    '## Implement'
    '## Completion gates'
    '## Out of scope'
)

for body_file in "${body_files[@]}"; do
    [[ -s "$body_file" && "$(awk 'END { print NR }' "$body_file")" -gt 1 ]] || {
        echo "Persisted issue body must contain physical Markdown lines: $body_file" >&2
        exit 1
    }
    first_nonblank="$(awk 'NF { print; exit }' "$body_file")"
    [[ "$first_nonblank" =~ ^##[[:space:]]+[^[:space:]] ]] || {
        echo "Persisted issue body must begin with a level-two heading: $body_file" >&2
        exit 1
    }
    for heading in "${required_headings[@]}"; do
        grep -Fqx -- "$heading" "$body_file" || {
            echo "Persisted issue body is missing the physical heading '$heading': $body_file" >&2
            exit 1
        }
    done
    if [[ "$lesson_propagation" == "campaign" ]]; then
        grep -Fqx -- '## Campaign lessons (REQUIRED)' "$body_file" || {
            echo "Treatment issue body is missing its campaign-lessons heading: $body_file" >&2
            exit 1
        }
    elif grep -Fqx -- '## Campaign lessons (REQUIRED)' "$body_file"; then
        echo "Control issue body unexpectedly contains a campaign-lessons heading: $body_file" >&2
        exit 1
    fi
done
```

</details>


---

<sub>22s</sub>

### `view`

**view the file at /home/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh.**

/home/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh

<details>
<summary>131 lines</summary>

```
#!/usr/bin/env bash
# shepherd-task-version: 1.0.4
set -euo pipefail

fail() {
    printf 'verify-github-issue-body: %s\n' "$*" >&2
    exit 1
}

[[ $# -ge 3 && $# -le 6 ]] ||
    fail "usage: $0 OWNER/REPO ISSUE_NUMBER EXPECTED_BODY_PATH [MAX_ATTEMPTS] [DELAY_SECONDS] [DIAGNOSTIC_PATH]"

repository="$1"
issue_number="$2"
expected_body_path="$3"
max_attempts="${4:-6}"
delay_seconds="${5:-5}"
diagnostic_path="${6:-}"
gh_command="${GH_COMMAND:-gh}"

[[ "$repository" =~ ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$ ]] ||
    fail "invalid repository: $repository"
[[ "$issue_number" =~ ^[1-9][0-9]*$ ]] ||
    fail "invalid issue number: $issue_number"
[[ "$max_attempts" =~ ^[1-9][0-9]*$ ]] ||
    fail "MAX_ATTEMPTS must be a positive integer"
[[ "$delay_seconds" =~ ^[0-9]+$ ]] ||
    fail "DELAY_SECONDS must be a non-negative integer"
[[ -f "$expected_body_path" ]] ||
    fail "expected issue body file not found: $expected_body_path"

temp_directory="$(mktemp -d)"
trap 'rm -rf "$temp_directory"' EXIT
response_path="$temp_directory/response.json"
actual_path="$temp_directory/actual.txt"
actual_normalized="$temp_directory/actual-normalized.txt"
expected_normalized="$temp_directory/expected-normalized.txt"

normalize_file() {
    jq -b -Rsj 'gsub("\r\n|\r"; "\n")' "$1" >"$2"
}

equivalent_files() {
    local actual="$1"
    local expected="$2"
    local candidate="$temp_directory/candidate.txt"

    cmp -s -- "$actual" "$expected" && return 0
    cp "$actual" "$candidate"
    printf '\n' >>"$candidate"
    cmp -s -- "$candidate" "$expected" && return 0
    cp "$expected" "$candidate"
    printf '\n' >>"$candidate"
    cmp -s -- "$actual" "$candidate"
}

sha256_file() {
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum "$1" | awk '{print $1}'
    else
        shasum -a 256 "$1" | awk '{print $1}'
    fi
}

write_diagnostic() {
    local reason="$1"
    local attempts="$2"
    [[ -n "$diagnostic_path" ]] || return 0

    mkdir -p "$(dirname "$diagnostic_path")"
    local expected_length actual_length expected_hash actual_hash first_offset
    expected_length="$(wc -c <"$expected_normalized" | tr -d ' ')"
    actual_length="$(wc -c <"$actual_normalized" | tr -d ' ')"
    expected_hash="$(sha256_file "$expected_normalized")"
    actual_hash="$(sha256_file "$actual_normalized")"
    first_offset="$( (cmp -l -- "$actual_normalized" "$expected_normalized" 2>/dev/null || true) | awk 'NR == 1 { print $1 - 1 }')"
    [[ -n "$first_offset" ]] || first_offset="null"

    jq -n \
        --arg repository "$repository" \
        --argjson issueNumber "$issue_number" \
        --arg endpoint "repos/$repository/issues/$issue_number" \
        --argjson attempts "$attempts" \
        --arg observedAt "$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
        --arg reason "$reason" \
        --argjson expectedLength "$expected_length" \
        --argjson actualLength "$actual_length" \
        --arg expectedSha256 "$expected_hash" \
        --arg actualSha256 "$actual_hash" \
        --argjson firstDifferenceOffset "$first_offset" \
        '{
            schemaVersion: 1,
            repository: $repository,
            issueNumber: $issueNumber,
            endpoint: $endpoint,
            attempts: $attempts,
            observedAt: $observedAt,
            reason: $reason,
            expectedLength: $expectedLength,
            actualLength: $actualLength,
            expectedSha256: $expectedSha256,
            actualSha256: $actualSha256,
            firstDifferenceOffset: $firstDifferenceOffset
        }' >"$diagnostic_path"
}

normalize_file "$expected_body_path" "$expected_normalized"
last_reason=""

for ((attempt = 1; attempt <= max_attempts; attempt++)); do
    set +e
    "$gh_command" api "repos/$repository/issues/$issue_number" >"$response_path" 2>"$temp_directory/error.txt"
    exit_code=$?
    set -e

    if [[ $exit_code -ne 0 ]]; then
        last_reason="GitHub REST request failed with exit code $exit_code."
        error_message="$(cat "$temp_directory/error.txt")"
        authentication_error_pattern='HTTP[[:space:]]+(401|403)|[Aa]uthentication|[Nn][Oo][Tt][[:space:]]authorized|[Rr]esource[[:space:]]not[[:space:]]accessible'
        if [[ "$error_message" =~ $authentication_error_pattern ]]; then
            : >"$actual_normalized"
            write_diagnostic "$last_reason" "$attempt"
            fail "unable to fetch issue #$issue_number from $repository: $error_message"
        fi
    elif ! jq -e 'type == "object" and has("body")' "$response_path" >/dev/null 2>&1; then
        last_reason="GitHub REST response was invalid JSON."
    else
        jq -b -j '.body // ""' "$response_path" >"$actual_path"
        normalize_file "$actual_path" "$actual_normalized"
        if equivalent_files "$actual_normalized" "$expected_normalized"; then
            cat "$response_path"
            exit 0
        fi
        last_reason="GitHub issue body differs from the persisted draft."
    fi

    if [[ $attempt -lt $max_attempts ]]; then
        printf 'verify-github-issue-body: %s Retrying issue #%s body verification (%s/%s).\n' \
            "$last_reason" "$issue_number" "$attempt" "$max_attempts" >&2
        ((delay_seconds > 0)) && sleep "$delay_seconds"
    fi
done

[[ -f "$actual_normalized" ]] || : >"$actual_normalized"
write_diagnostic "$last_reason" "$max_attempts"
diagnostic_suffix=""
[[ -z "$diagnostic_path" ]] || diagnostic_suffix=" Diagnostic: $diagnostic_path"
fail "issue #$issue_number body verification failed after $max_attempts attempts. $last_reason$diagnostic_suffix"
```

</details>


---

<sub>22s</sub>

### `bash`

**Verify plan headings and resolutions**

$ set -euo pipefail
BASE_BRANCH='experiment/shepherd-control'
PLAN='1-math-control-remove-before-merge/math-tool-ignorance-reduction-plan.md'
content="$(git show "$BASE_BRANCH:$PLAN")"
printf '%s\n' "$content" | awk '
  /^## Ignorance reduction$/ {q++; inq=1; next}
  /^## Implementation$/ {i++; inq=0; ini=1; next}
  /^## / {inq=0; ini=0}
  inq && /^### / {questions++; print "QUESTION_HEADING=" $0}
  inq && /\*\*Resolution:\*\*/ {resolutions++; print "RESOLUTION_MARKER=" $0}
  ini && /^### / {tasks++; print "TASK_HEADING=" $0}
  END {printf "QUESTIONS_SECTION_COUNT=%d\nIMPLEMENTATION_SECTION_COUNT=%d\nQUESTION_COUNT=%d\nRESOLUTION_COUNT=%d\nTASK_COUNT=%d\n", q,i,questions,resolutions,tasks; if(q!=1 || i!=1 || tasks!=2 || questions!=resolutions) exit 1}
'

<details>
<summary>12 lines</summary>

```
QUESTION_HEADING=### Repository-owned validation
RESOLUTION_MARKER=**Resolution:** The committed canonical command is
QUESTION_HEADING=### Output and ordering contracts
RESOLUTION_MARKER=**Resolution:** Direct CLI execution writes exactly one result line to stdout:
TASK_HEADING=### 1. Implement Fibonacci with unit and isolated CLI coverage
TASK_HEADING=### 2. Add factorial and operation dispatch
QUESTIONS_SECTION_COUNT=1
IMPLEMENTATION_SECTION_COUNT=1
QUESTION_COUNT=2
RESOLUTION_COUNT=2
TASK_COUNT=2
<shellId: 3 completed with exit code 0>
```

</details>


---

<sub>44s</sub>

### `apply_patch`

<details>
<summary>Arguments</summary>

```json
"*** Begin Patch\n*** Add File: /home/edburns/workareas/dd-3068633-linux-x64-02-shepherd-control/1-math-control-remove-before-merge/prompts/shepherd-task-20-20260924-0036/issue-bodies/01-1-implement-fibonacci-body.md\n+## Campaign context and required reading\n+\n+On the `experiment/shepherd-control` branch, the directory `1-math-control-remove-before-merge` contains the plan (`math-tool-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then carefully re-read these exact headings:\n+\n+- `## Ignorance reduction`\n+- `### Repository-owned validation`\n+- `### Output and ordering contracts`\n+- `## Implementation`\n+- `### 1. Implement Fibonacci with unit and isolated CLI coverage`\n+\n+The resolved repository-validation decision is that the only canonical acceptance command is `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1`. The existing pull-request workflow `.github/workflows/shepherd-task-math-tool.yml` installs exactly Pester 5.7.1 and invokes that repository-owned runner. Do not replace, bypass, or duplicate that acceptance path.\n+\n+The resolved behavior contract is that inputs are non-negative integers, functions return numeric values without incidental output, and direct CLI execution writes exactly one result line to stdout. For this task that line is `Fibonacci(N) = value`. The research recorded in the plan established that production and test work belongs in the repository-root files `math-tool.ps1` and `math-tool.Tests.ps1`; implement from the specification rather than treating research artifacts as production templates.\n+\n+## Branch and execution order\n+\n+Use `experiment/shepherd-control` from remote `origin` as the base branch for the pull request. This is task 1 of 2. Tasks are assigned, completed, and merged serially in the listed plan order. Do not begin work until this issue is assigned. Task 2 must not begin until this task is merged into the base branch.\n+\n+## Implement\n+\n+Create repository-root `math-tool.ps1` with:\n+\n+- A script parameter named `N` accepting non-negative integer input.\n+- A pure `Get-Fibonacci` function that returns the Fibonacci value as a number and emits no labels, progress text, or other incidental pipeline output.\n+- Direct-script behavior that invokes the function and writes exactly one stdout line in the form `Fibonacci(N) = value`.\n+\n+Create repository-root `math-tool.Tests.ps1` with:\n+\n+- Dot-sourced unit coverage of `Get-Fibonacci`.\n+- Unit cases for `N=0`, `N=1`, and at least one small representative value beyond the base cases.\n+- Isolated direct-CLI coverage that starts a child `pwsh` process rather than relying on the dot-sourced test session.\n+- Assertions that the child process succeeds and its stdout is exactly the required single result line for the covered values.\n+\n+Keep the implementation deterministic and small. Ensure dot-sourcing the script for unit tests does not produce direct-execution output.\n+\n+## Completion gates\n+\n+- `Get-Fibonacci 0` returns numeric `0`, `Get-Fibonacci 1` returns numeric `1`, and the representative case returns the mathematically correct value.\n+- Function calls produce no incidental output beyond the returned number.\n+- Direct CLI execution for each covered case exits successfully and produces exactly one line with no extra stdout before or after `Fibonacci(N) = value`.\n+- The isolated CLI tests invoke the repository script through a child `pwsh` process, so they detect regressions hidden by dot-sourcing.\n+- `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1` exits zero using the committed Pester 5.7.1 validation path.\n+- The pinned pull-request CI passes.\n+\n+## Out of scope\n+\n+- Do not implement factorial, operation dispatch, or task 2 behavior.\n+- Do not change the canonical test runner, workflow, or pinned Pester version.\n+- Do not add unrelated math operations, dependencies, generated artifacts, or documentation.\n+- Keep changes limited to `math-tool.ps1` and `math-tool.Tests.ps1`.\n*** Add File: /home/edburns/workareas/dd-3068633-linux-x64-02-shepherd-control/1-math-control-remove-before-merge/prompts/shepherd-task-20-20260924-0036/issue-bodies/02-2-add-factorial-dispatch-body.md\n+## Campaign context and required reading\n+\n+On the `experiment/shepherd-control` branch, the directory `1-math-control-remove-before-merge` contains the plan (`math-tool-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then carefully re-read these exact headings:\n+\n+- `## Ignorance reduction`\n+- `### Repository-owned validation`\n+- `### Output and ordering contracts`\n+- `## Implementation`\n+- `### 1. Implement Fibonacci with unit and isolated CLI coverage`\n+- `### 2. Add factorial and operation dispatch`\n+\n+The resolved repository-validation decision is that the only canonical acceptance command is `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1`. The existing pull-request workflow `.github/workflows/shepherd-task-math-tool.yml` installs exactly Pester 5.7.1 and invokes that repository-owned runner. Do not replace, bypass, or duplicate that acceptance path.\n+\n+The resolved behavior contract is that inputs are non-negative integers, functions return numeric values without incidental output, and direct CLI execution writes exactly one result line: either `Fibonacci(N) = value` or `Factorial(N) = value`. The research recorded in the plan established that the implementation remains in repository-root `math-tool.ps1` and its regression suite remains in repository-root `math-tool.Tests.ps1`; implement from these findings rather than treating research artifacts as production templates.\n+\n+## Branch and execution order\n+\n+Use `experiment/shepherd-control` from remote `origin` as the base branch for the pull request. This is task 2 of 2 and depends on task 1 already being merged. Tasks are assigned, completed, and merged serially in the listed plan order. Do not begin work until this issue is assigned and the Fibonacci task is present on the base branch.\n+\n+## Implement\n+\n+Extend the existing repository-root `math-tool.ps1` without regressing the merged Fibonacci contract:\n+\n+- Add a pure `Get-Factorial` function for non-negative integer inputs. It must return only the numeric result, with no labels, progress text, or incidental pipeline output.\n+- Add an `Operation` script parameter that dispatches between `fibonacci` and `factorial` while retaining the `N` parameter.\n+- Preserve the existing Fibonacci calculation and exact direct-CLI output `Fibonacci(N) = value`.\n+- For factorial dispatch, write exactly one direct-CLI stdout line in the form `Factorial(N) = value`.\n+- Reject values outside the supported operation choices or non-negative integer input contract through normal PowerShell parameter validation; do not silently select an unrelated operation.\n+\n+Extend `math-tool.Tests.ps1` into a combined regression suite:\n+\n+- Retain the task 1 Fibonacci unit and isolated child-process CLI coverage.\n+- Add dot-sourced unit coverage for `Get-Factorial` at `N=0`, `N=1`, and at least one small representative value.\n+- Add isolated child-`pwsh` coverage for operation dispatch and exact CLI output for both `fibonacci` and `factorial`.\n+- Assert successful process exit and exact single-line stdout for representative dispatch cases.\n+\n+## Completion gates\n+\n+- `Get-Factorial 0` and `Get-Factorial 1` each return numeric `1`; the representative factorial case returns the mathematically correct value.\n+- Both pure functions emit no incidental output beyond their numeric return values.\n+- Fibonacci unit and direct-CLI tests from task 1 remain passing and retain their exact output contract.\n+- Dispatch selects the requested operation, and isolated child-process tests prove both exact output forms with no extra stdout.\n+- Invalid operation selection cannot silently run Fibonacci or factorial.\n+- `pwsh -NoLogo -NoProfile -File ./eng/test-math-tool.ps1` exits zero for the combined regression suite using the committed Pester 5.7.1 validation path.\n+- The pinned pull-request CI passes.\n+\n+## Out of scope\n+\n+- Do not add operations other than Fibonacci and factorial.\n+- Do not redesign the small command-line tool, add dependencies, or expand scope beyond `math-tool.ps1` and `math-tool.Tests.ps1`.\n+- Do not change the canonical test runner, workflow, or pinned Pester version.\n+- Do not weaken or remove task 1 regression coverage.\n*** End Patch\n"
```

</details>

```
Added 2 file(s): /home/edburns/workareas/dd-3068633-linux-x64-02-shepherd-control/1-math-control-remove-before-merge/prompts/shepherd-task-20-20260924-0036/issue-bodies/01-1-implement-fibonacci-body.md, /home/edburns/workareas/dd-3068633-linux-x64-02-shepherd-control/1-math-control-remove-before-merge/prompts/shepherd-task-20-20260924-0036/issue-bodies/02-2-add-factorial-dispatch-body.md
```


---

<sub>50s</sub>

### `bash`

**Validate persisted issue drafts**

$ set -euo pipefail
LOG_DIRECTORY='/home/edburns/workareas/dd-3068633-linux-x64-02-shepherd-control/1-math-control-remove-before-merge/prompts/shepherd-task-20-20260924-0036'
DRAFT_VALIDATOR='/home/edburns/.copilot/plugins/shepherd-task/scripts/validate-stage20-drafts.sh'
"$DRAFT_VALIDATOR" "$LOG_DIRECTORY/issue-bodies" 2 off
for body in "$LOG_DIRECTORY"/issue-bodies/*-body.md; do
  printf '%s\t%s lines\n' "$(basename "$body")" "$(awk 'END {print NR}' "$body")"
done

```
01-1-implement-fibonacci-body.md	52 lines
02-2-add-factorial-dispatch-body.md	54 lines
<shellId: 4 completed with exit code 0>
```


---

<sub>57s</sub>

### Copilot

Both persisted drafts passed the mandatory validator with physical Markdown structure intact. I’m creating and linking the two unassigned children serially, verifying each server-side body before linking, then checking final count, order, state, and assignment postconditions.

---

<sub>1m 25s</sub>

### `bash`

**Create and verify child issues**

$ set -uo pipefail
REPO='edburns/dd-3068633-linux-x64-02'
PARENT_ISSUE=1
LOG_DIRECTORY='/home/edburns/workareas/dd-3068633-linux-x64-02-shepherd-control/1-math-control-remove-before-merge/prompts/shepherd-task-20-20260924-0036'
ISSUE_BODY_VERIFIER='/home/edburns/.copilot/plugins/shepherd-task/scripts/verify-github-issue-body.sh'
LEDGER="$LOG_DIRECTORY/creation-ledger.json"
RESULT="$LOG_DIRECTORY/stage-20-result.json"

atomic_write() {
  local path="$1" content="$2" tmp
  tmp="$(mktemp "$(dirname "$path")/.stage20.XXXXXX")" || return 1
  printf '%s\n' "$content" >"$tmp" || { rm -f "$tmp"; return 1; }
  mv "$tmp" "$path"
}

update_ledger_flag() {
  local number="$1" field="$2" value="$3" updated
  updated="$(
    jq \
      --argjson number "$number" \
      --arg field "$field" \
      --argjson value "$value" \
      'map(if .number == $number then .[$field] = $value else . end)' \
      "$LEDGER"
  )" || return 1
  atomic_write "$LEDGER" "$updated"
}

reconcile_and_fail() {
  local operation="$1" error="$2" children_output normalized updated
  children_output="$(gh api "repos/$REPO/issues/$PARENT_ISSUE/sub_issues" --paginate --slurp 2>&1)"
  if [[ $? -eq 0 ]]; then
    normalized="$(printf '%s' "$children_output" | jq 'if length == 0 then [] elif all(.[]; type == "array") then add else . end')"
    if [[ $? -eq 0 ]]; then
      updated="$(jq --argjson children "$normalized" 'map(.linked = (any($children[]; .id == .id) // false))' "$LEDGER" 2>/dev/null)"
      # Correctly compare each ledger ID against the normalized server child array.
      updated="$(jq --argjson children "$normalized" 'map(. as $entry | .linked = any($children[]; .id == $entry.id))' "$LEDGER" 2>/dev/null)" && atomic_write "$LEDGER" "$updated"
    fi
  fi
  local result_json
  result_json="$(jq -n --arg error "$operation: $error" '{schemaVersion:1,status:"failed",ledgerFile:"creation-ledger.json",operationError:$error}')"
  atomic_write "$RESULT" "$result_json"
  printf 'FAILED_OPERATION=%s\nERROR=%s\n' "$operation" "$error" >&2
  jq -r '.[] | "LEDGER issue=#\(.number) title=\(.title) url=\(.url) bodyFile=\(.bodyFile) body_verified=\(.body_verified) linked=\(.linked)"' "$LEDGER" >&2
  jq -r --arg repo "$REPO" '.[] | "gh issue delete \(.number) --repo \"\($repo)\" --yes"' "$LEDGER" >&2
  exit 1
}

baseline_output="$(gh api "repos/$REPO/issues/$PARENT_ISSUE/sub_issues" --paginate --slurp 2>&1)" || reconcile_and_fail 'baseline query' "$baseline_output"
baseline="$(printf '%s' "$baseline_output" | jq 'if length == 0 then [] elif all(.[]; type == "array") then add else . end')" || reconcile_and_fail 'baseline normalization' 'Unable to normalize parent children.'

atomic_write "$LEDGER" '[]' || exit 1
atomic_write "$RESULT" '{"schemaVersion":1,"status":"in_progress","ledgerFile":"creation-ledger.json","operationError":null}' || exit 1

titles=(
  '1. Implement Fibonacci with unit and isolated CLI coverage'
  '2. Add factorial and operation dispatch'
)
subsections=(
  '1. Implement Fibonacci with unit and isolated CLI coverage'
  '2. Add factorial and operation dispatch'
)
body_files=(
  "$LOG_DIRECTORY/issue-bodies/01-1-implement-fibonacci-body.md"
  "$LOG_DIRECTORY/issue-bodies/02-2-add-factorial-dispatch-body.md"
)

for index in 0 1; do
  title="${titles[$index]}"
  subsection="${subsections[$index]}"
  body_file="${body_files[$index]}"
  relative_body="${body_file#"$LOG_DIRECTORY/"}"
  create_error="$(mktemp)"
  issue_json="$(gh api "repos/$REPO/issues" -X POST -f title="$title" -F "body=@$body_file" --jq '{id,number,node_id,html_url,title}' 2>"$create_error")"
  create_status=$?
  if [[ $create_status -ne 0 ]]; then
    error="$(cat "$create_error")"; rm -f "$create_error"
    reconcile_and_fail "create issue for $subsection" "$error"
  fi
  rm -f "$create_error"
  issue_id="$(jq -r '.id' <<<"$issue_json")"
  issue_number="$(jq -r '.number' <<<"$issue_json")"
  issue_url="$(jq -r '.html_url' <<<"$issue_json")"
  entry="$(jq -n \
    --arg implementationSubsection "$subsection" \
    --arg bodyFile "$relative_body" \
    --argjson id "$issue_id" \
    --argjson number "$issue_number" \
    --arg title "$title" \
    --arg url "$issue_url" \
    '{implementationSubsection:$implementationSubsection,bodyFile:$bodyFile,id:$id,number:$number,title:$title,url:$url,body_verified:false,linked:false}')"
  updated="$(jq --argjson entry "$entry" '. + [$entry]' "$LEDGER")" || reconcile_and_fail "persist ledger for issue #$issue_number" 'Unable to append ledger entry.'
  atomic_write "$LEDGER" "$updated" || reconcile_and_fail "persist ledger for issue #$issue_number" 'Atomic ledger write failed.'

  diagnostic="$LOG_DIRECTORY/issue-$issue_number-body-verification-failure.json"
  issue_verified_json="$("$ISSUE_BODY_VERIFIER" "$REPO" "$issue_number" "$body_file" 6 5 "$diagnostic" 2>&1)"
  verify_status=$?
  [[ $verify_status -eq 0 ]] || reconcile_and_fail "verify body for issue #$issue_number" "$issue_verified_json"
  update_ledger_flag "$issue_number" body_verified true || reconcile_and_fail "persist body verification for issue #$issue_number" 'Atomic ledger update failed.'

  linked=false
  link_error=''
  for attempt in 1 2 3; do
    link_error="$(printf '{"sub_issue_id": %s}' "$issue_id" | gh api "repos/$REPO/issues/$PARENT_ISSUE/sub_issues" -X POST --input - 2>&1)"
    if [[ $? -eq 0 ]]; then linked=true; break; fi
    [[ $attempt -eq 3 ]] || sleep 1
  done
  [[ "$linked" == true ]] || reconcile_and_fail "link issue #$issue_number" "$link_error"
  update_ledger_flag "$issue_number" linked true || reconcile_and_fail "persist link for issue #$issue_number" 'Atomic ledger update failed.'
done

final_output="$(gh api "repos/$REPO/issues/$PARENT_ISSUE/sub_issues" --paginate --slurp 2>&1)" || reconcile_and_fail 'final child query' "$final_output"
final_children="$(printf '%s' "$final_output" | jq 'if length == 0 then [] elif all(.[]; type == "array") then add else . end')" || reconcile_and_fail 'final child normalization' 'Unable to normalize final parent children.'
baseline_count="$(jq 'length' <<<"$baseline")"
ledger_count="$(jq 'length' "$LEDGER")"
final_count="$(jq 'length' <<<"$final_children")"
[[ $final_count -eq $((baseline_count + ledger_count)) ]] || reconcile_and_fail 'verify child count' "Expected $((baseline_count + ledger_count)) children, observed $final_count."

expected_ids="$(jq '[.[].id]' "$LEDGER")"
new_ids="$(jq --argjson baseline "$baseline" '[.[] | select(.id as $id | all($baseline[]; .id != $id)) | .id]' <<<"$final_children")"
[[ "$(jq -c . <<<"$new_ids")" == "$(jq -c . <<<"$expected_ids")" ]] || reconcile_and_fail 'verify child order' "New child order does not match plan order. Expected $(jq -c . <<<"$expected_ids"), observed $(jq -c . <<<"$new_ids")."

while IFS=$'\t' read -r issue_number issue_id body_file; do
  matches="$(jq --argjson id "$issue_id" '[.[] | select(.id == $id)] | length' <<<"$final_children")"
  [[ "$matches" -eq 1 ]] || reconcile_and_fail "verify unique link for issue #$issue_number" "Observed $matches links for issue ID $issue_id."
  full_body_file="$LOG_DIRECTORY/$body_file"
  final_verify="$("$ISSUE_BODY_VERIFIER" "$REPO" "$issue_number" "$full_body_file" 6 5 "$LOG_DIRECTORY/issue-$issue_number-body-verification-failure.json" 2>&1)"
  [[ $? -eq 0 ]] || reconcile_and_fail "final body verification for issue #$issue_number" "$final_verify"
  state_json="$(gh api "repos/$REPO/issues/$issue_number" --jq '{state,assignees}')" || reconcile_and_fail "verify state for issue #$issue_number" 'Unable to fetch issue state.'
  [[ "$(jq -r '.state' <<<"$state_json")" == open ]] || reconcile_and_fail "verify state for issue #$issue_number" 'Issue is not open.'
  [[ "$(jq '.assignees | length' <<<"$state_json")" -eq 0 ]] || reconcile_and_fail "verify assignees for issue #$issue_number" 'Issue has one or more assignees.'
done < <(jq -r '.[] | [.number,.id,.bodyFile] | @tsv' "$LEDGER")

atomic_write "$RESULT" '{"schemaVersion":1,"status":"complete","ledgerFile":"creation-ledger.json","operationError":null}' || reconcile_and_fail 'write successful stage result' 'Atomic result write failed.'
printf 'STAGE20_COMPLETE\n'
jq '.' "$LEDGER"
printf 'RESULT\n'
jq '.' "$RESULT"

<details>
<summary>31 lines</summary>

```
STAGE20_COMPLETE
[
  {
    "implementationSubsection": "1. Implement Fibonacci with unit and isolated CLI coverage",
    "bodyFile": "issue-bodies/01-1-implement-fibonacci-body.md",
    "id": 5561315051,
    "number": 2,
    "title": "1. Implement Fibonacci with unit and isolated CLI coverage",
    "url": "https://github.com/edburns/dd-3068633-linux-x64-02/issues/2",
    "body_verified": true,
    "linked": true
  },
  {
    "implementationSubsection": "2. Add factorial and operation dispatch",
    "bodyFile": "issue-bodies/02-2-add-factorial-dispatch-body.md",
    "id": 5561315282,
    "number": 3,
    "title": "2. Add factorial and operation dispatch",
    "url": "https://github.com/edburns/dd-3068633-linux-x64-02/issues/3",
    "body_verified": true,
    "linked": true
  }
]
RESULT
{
  "schemaVersion": 1,
  "status": "complete",
  "ledgerFile": "creation-ledger.json",
  "operationError": null
}
<shellId: 5 completed with exit code 0>
```

</details>


---

<sub>1m 27s</sub>

### Copilot

Created and linked two unassigned child issues under #1, in plan order and **without an issue type**.

| Implementation subsection | Issue | Title |
|---|---:|---|
| 1. Implement Fibonacci with unit and isolated CLI coverage | [#2](https://github.com/edburns/dd-3068633-linux-x64-02/issues/2) | Implement Fibonacci with unit and isolated CLI coverage |
| 2. Add factorial and operation dispatch | [#3](https://github.com/edburns/dd-3068633-linux-x64-02/issues/3) | Add factorial and operation dispatch |

**Ordered issue numbers:** `2,3`

**Suggested stage 25 invocation:** invoke `shepherd-task-25-given-list` with `REPO=edburns/dd-3068633-linux-x64-02`, `BASE_BRANCH=experiment/shepherd-control`, `PARENT_ISSUE=1`, `ISSUE_NUMBERS=2,3`, and `PLAN_DIRECTORY=1-math-control-remove-before-merge`.

---

<sub>Generated by [GitHub Copilot CLI](https://github.com/features/copilot/cli)</sub>
