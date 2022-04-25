(lang dune 3.0)

(name prog_kiso)
(generate_opam_files true)

(source
 (github waddlaw/book-prog_kiso))

(authors "waddlaw")
(maintainers "waddlaw")

(package
 (name prog_kiso)
 (depends
  ocaml
  dune
  (ppx_inline_test (and :with-test (>= "0.15")))
  (alcotest (and :with-test (>= "1.5")))
 ))
