# プログラミングの基礎

- [プログラミングの基礎 - サポートページ](http://pllab.is.ocha.ac.jp/~asai/book/Top.html)

```bash
# repl
$ dune utop src
$ dune utop src -- -implicit-bindings
$ dune utop src -- -implicit-bindings -require alcotest

# build
$ dune build -w
$ dune test -w

# フォーマッター
$ dune build @fmt --auto-promote
```

## repl の使い方

```
# open Prog_kiso_lib.Ch02;;

# require "alcotest";;

# #quit;;
# exit 0;;
```


OCaml | Haskell | 内容
------|---------|-------
`[a; b; c]` | `[a, b, c]` | リスト
`::` | `:` | コンス

## links

- [utop - Man Page](https://www.mankier.com/1/utop)
- [ocaml/setup-ocaml](https://github.com/ocaml/setup-ocaml)
- [ocurrent/opam-dune-lint](https://github.com/ocurrent/opam-dune-lint)

### test

- [x] [janestreet/ppx_inline_test](https://github.com/janestreet/ppx_inline_test)
- [vincent-hugot/qtest](https://github.com/vincent-hugot/qtest)
- [x] [mirage/alcotest](https://github.com/mirage/alcotest)
  - [API doc](https://mirage.github.io/alcotest/alcotest/Alcotest/index.html)