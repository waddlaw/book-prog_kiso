let kyuyo () =
  let open Prog_kiso_lib.Kyuyo in
  Alcotest.(check int) "kyuyo 25" 23850 @@ kyuyo 25;
  Alcotest.(check int) "kyuyo 28" 26700 @@ kyuyo 28;
  Alcotest.(check int) "kyuyo 31" 30480 @@ kyuyo 31
;;

let exercise = [ "Kyuyo", `Quick, kyuyo ]
