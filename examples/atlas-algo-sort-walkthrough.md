# Atlas Algo Sort Scope Walkthrough

I use this file as a small checklist before changing the OCaml implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | input width | 94 | hold |
| stress | search depth | 159 | ship |
| edge | boundary pressure | 141 | ship |
| recovery | complexity | 149 | ship |
| stale | input width | 189 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stale` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
