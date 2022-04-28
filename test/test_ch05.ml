let ex51 () =
  let open Prog_kiso_lib.Ch05 in
  Alcotest.(check int) "if 2 < 1 then 3 else 4" 4 ex511;
  Alcotest.(check bool) "if \"a\" = \"b\" then false else true" true ex513;
  Alcotest.(check bool) "if not (3 = 4) then 1 < 2 else 1 > 2" true ex515

let ex52 () =
  let open Prog_kiso_lib.Ch05 in
  Alcotest.(check string) "jikan" "午前" @@ jikan 2;
  Alcotest.(check string) "jikan" "午後" @@ jikan 22

let ex53 () =
  let open Prog_kiso_lib.Ch05 in
  Alcotest.(check string) "seiza" "おひつじ座" @@ seiza 3 21;
  Alcotest.(check string) "seiza" "おひつじ座" @@ seiza 4 3

let ex54 () =
  let open Prog_kiso_lib.Ch05 in
  Alcotest.(check @@ float 0.01) "a=1, b=-3, c=1" 5.
  @@ hanbetsushiki 1. (-3.) 1.;
  Alcotest.(check @@ float 0.01) "a=1, b=-4, c=4" 0.
  @@ hanbetsushiki 1. (-4.) 4.;
  Alcotest.(check @@ float 0.01) "a=3, b=2, c=10" (-116.)
  @@ hanbetsushiki 3. 2. 10.

let ex55 () =
  let open Prog_kiso_lib.Ch05 in
  Alcotest.(check int) "a=1, b=-3, c=1" 2 @@ kai_no_kosuu 1. (-3.) 1.;
  Alcotest.(check int) "a=1, b=-4, c=4" 1 @@ kai_no_kosuu 1. (-4.) 4.;
  Alcotest.(check int) "a=3, b=2, c=10" 0 @@ kai_no_kosuu 3. 2. 10.

let ex56 () =
  let open Prog_kiso_lib.Ch05 in
  Alcotest.(check bool) "a=1, b=-3, c=1" false @@ kyosuukai 1. (-3.) 1.;
  Alcotest.(check bool) "a=1, b=-4, c=4" false @@ kyosuukai 1. (-4.) 4.;
  Alcotest.(check bool) "a=3, b=2, c=10" true @@ kyosuukai 3. 2. 10.

let ex57 () =
  let open Prog_kiso_lib.Ch05 in
  Alcotest.(check string) "taikei 190cm 60kg" "やせ" @@ taikei 190. 60.

let exercise =
  [
    ("Exercise 5.1", `Quick, ex51);
    ("Exercise 5.2", `Quick, ex52);
    ("Exercise 5.3", `Quick, ex53);
    ("Exercise 5.4", `Quick, ex54);
    ("Exercise 5.5", `Quick, ex55);
    ("Exercise 5.6", `Quick, ex56);
    ("Exercise 5.7", `Quick, ex57);
  ]
