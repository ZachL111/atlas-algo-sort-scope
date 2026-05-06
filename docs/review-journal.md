# Review Journal

The review surface for `atlas-algo-sort-scope` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its algorithms focus without claiming live deployment or external usage.

## Cases

- `baseline`: `input width`, score 94, lane `hold`
- `stress`: `search depth`, score 159, lane `ship`
- `edge`: `boundary pressure`, score 141, lane `ship`
- `recovery`: `complexity`, score 149, lane `ship`
- `stale`: `input width`, score 189, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
