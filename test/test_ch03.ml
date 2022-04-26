let ex31 () =
  let open Prog_kiso_lib.Ch03 in
  Alcotest.(check @@ float epsilon_float) "e" 2.7182 e;
  Alcotest.(check bool) " e > 0" true positive;
  Alcotest.(check int) "60 * 60 * 24" 86400 seconds_of_day;
  Alcotest.(check string) "茗荷谷" "茗荷谷" name

(* let ex32 () =
   let open Prog_kiso_lib.Ch03 in
   let e = epsilon_float in
   Alcotest.(check @@ float e) "2 * 3.14 * 10" 62.8000000000000043 ex221;
   Alcotest.(check @@ float e) "1.73 ^ 2" 2.9929 ex222;
   Alcotest.(check @@ float e) "7 / 2" 3.5 ex223 *)

let exercise =
  [ ("Exercise 3.1", `Quick, ex31) (* "Exercise 3.2", `Quick, ex32; *) ]
