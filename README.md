# apertium-gf
Set of tools to integrate Grammatical Framework with Apertium

## Profiling

cabal run profiling TranslateSpa.pgf TranslateSpa "el zydeco es acústico"

that should create `profiling.prof`, and there you see cost centres, what function takes a lot of time.

(Main doesn't work though, TODO fix that)
