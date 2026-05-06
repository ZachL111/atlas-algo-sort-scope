# atlas-algo-sort-scope

`atlas-algo-sort-scope` explores algorithms in OCaml. The repository keeps the core rule set compact, then surrounds it with examples that show how the decisions move.

## Atlas Algo Sort Scope Notes

The quickest review path is the verifier first, then the fixtures, then the operations note. That order makes it easy to see whether the code, data, and explanation still agree.

## Why This Exists

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Implementation Notes

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps input shape, complexity tradeoffs, and golden cases in one explicit decision path. The threshold is 150, with risk penalty 6, latency penalty 2, and weight bonus 6. The OCaml implementation keeps the data record and functions small enough to load directly in the test file.

## Example Scenarios

`pressure` is the first example I would inspect because it lands on the `review` path with a score of 118. The broader file also keeps `degraded` at -2 and `surge` at 258, which gives the model a useful low-to-high spread.

## Feature Notes

- Uses fixture data to keep complexity tradeoffs changes visible in code review.
- Includes extended examples for golden cases, including `surge` and `degraded`.
- Documents boundary checks tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.

## Local Setup

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Tests

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Code Tour

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Boundaries

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.

## Roadmap

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more algorithms fixture that focuses on a malformed or borderline input.

## Try It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.
