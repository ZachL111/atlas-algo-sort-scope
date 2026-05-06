# atlas-algo-sort-scope

`atlas-algo-sort-scope` keeps a focused OCaml implementation around algorithms. The project goal is to package an OCaml local lab for sort analysis with node-edge fixtures, cycle and reachability reports, and documented operating limits.

## Why It Exists

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Atlas Algo Sort Scope Review Notes

Start with `input width` and `input width`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Features

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/atlas-algo-sort-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `input width` and `input width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `input width`, `search depth`, `boundary pressure`, and `complexity`.

The added OCaml path is deliberately direct, with fixtures doing most of the explaining.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limitations And Roadmap

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
