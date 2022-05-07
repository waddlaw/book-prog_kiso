let ex21 () =
  let open Prog_kiso_lib.Ch02 in
  Alcotest.(check int) "7 - 3 * 4" (-5) ex211;
  Alcotest.(check int) "7 / 2 * 2" 6 ex212;
  Alcotest.(check int) "7 * 2 / 2" 7 ex213
;;

let ex22 () =
  let open Prog_kiso_lib.Ch02 in
  let e = epsilon_float in
  Alcotest.(check @@ float e) "2 * 3.14 * 10" 62.8000000000000043 ex221;
  Alcotest.(check @@ float e) "1.73 ^ 2" 2.9929 ex222;
  Alcotest.(check @@ float e) "7 / 2" 3.5 ex223
;;

let ex23 () =
  let open Prog_kiso_lib.Ch02 in
  Alcotest.(check string) "東京特許許可局局長" "東京特許許可局局長" ex231;
  Alcotest.(check string) "関数型言語" "関数型言語" ex232
;;

let ex24 () =
  let open Prog_kiso_lib.Ch02 in
  Alcotest.(check bool) "2 > 3" false ex241;
  Alcotest.(check bool) "not (3.1415 ** 2. > 10.)" true ex242;
  Alcotest.(check bool) "8 mod 3 = 2" true ex243;
  Alcotest.(check bool) "3+4+5 = 4*3" true ex244
;;

let exercise =
  [ "Exercise 2.1", `Quick, ex21
  ; "Exercise 2.2", `Quick, ex22
  ; "Exercise 2.3", `Quick, ex23
  ; "Exercise 2.4", `Quick, ex24
  ]
;;
