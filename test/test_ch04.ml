let ex41 () =
  let open Prog_kiso_lib.Ch04 in
  Alcotest.(check int) "baito_kyuyo 0 10" 8500 @@ baito_kyuyo 0 10;
  Alcotest.(check int) "baito_kyuyo 10 10" 18500 @@ baito_kyuyo 10 10

let ex42 () =
  let open Prog_kiso_lib.Ch04 in
  Alcotest.(check string) "jikoshokai OCaml" "私の名前はOCamlです"
  @@ jikoshokai "OCaml"

let ex43 () =
  let open Prog_kiso_lib.Ch04 in
  Alcotest.(check @@ float 0.01) "hyojun_taiju 1.73" 65.84 @@ hyojun_taiju 1.73

let ex44 () =
  let open Prog_kiso_lib.Ch04 in
  Alcotest.(check @@ float 0.01) "bmi 1.85 78.9" 23.05 @@ bmi 1.85 78.9

let ex46 () =
  let open Prog_kiso_lib.Ch04 in
  Alcotest.(check int) "tsuru_no_ashi 2" 4 @@ tsuru_no_ashi 2;
  Alcotest.(check int) "tsuru_no_ashi 5" 10 @@ tsuru_no_ashi 5;
  Alcotest.(check int) "tsuru_no_ashi 10" 20 @@ tsuru_no_ashi 10;

  Alcotest.(check int) "kame_no_ashi 2" 8 @@ kame_no_ashi 2;
  Alcotest.(check int) "kame_no_ashi 5" 20 @@ kame_no_ashi 5;
  Alcotest.(check int) "kame_no_ashi 10" 40 @@ kame_no_ashi 10

let ex47 () =
  let open Prog_kiso_lib.Ch04 in
  Alcotest.(check int) "tsurukame_no_ashi 2 3" 16 @@ tsurukame_no_ashi 2 3;
  Alcotest.(check int) "tsurukame_no_ashi 0 4" 16 @@ tsurukame_no_ashi 0 4;
  Alcotest.(check int) "tsurukame_no_ashi 5 5" 30 @@ tsurukame_no_ashi 5 5

let ex48 () =
  let open Prog_kiso_lib.Ch04 in
  Alcotest.(check int) "tsurukame 8 26" 3 @@ tsurukame 8 26;
  Alcotest.(check int) "tsurukame 100 274" 63 @@ tsurukame 100 274

let exercise =
  [
    ("Exercise 4.1", `Quick, ex41);
    ("Exercise 4.2", `Quick, ex42);
    ("Exercise 4.3", `Quick, ex43);
    ("Exercise 4.4", `Quick, ex44);
    ("Exercise 4.6", `Quick, ex46);
    ("Exercise 4.7", `Quick, ex47);
    ("Exercise 4.8", `Quick, ex48);
  ]
