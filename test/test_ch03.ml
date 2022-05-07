let ex31 () =
  let open Prog_kiso_lib.Ch03 in
  Alcotest.(check @@ float epsilon_float) "e" 2.7182 e;
  Alcotest.(check bool) " e > 0" true positive;
  Alcotest.(check int) "60 * 60 * 24" 86400 seconds_of_day;
  Alcotest.(check string) "茗荷谷" "茗荷谷" name
;;

let exercise = [ "Exercise 3.1", `Quick, ex31 ]
