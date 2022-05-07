let ex71 () =
  let open Prog_kiso_lib.Ch07 in
  Alcotest.(check @@ pair int @@ float 0.01) "goukei_to_heikin 10 20 30 40 50" (150, 30.00)
  @@ goukei_to_heikin 10 20 30 40 50
;;

let ex72 () =
  let open Prog_kiso_lib.Ch07 in
  Alcotest.(check string) "seiseki わど Good" "わどさんの評価はGoodです" @@ seiseki ("わど", "Good")
;;

let ex73 () =
  let open Prog_kiso_lib.Ch07 in
  Alcotest.(check @@ pair int int) "taisho_x (10, 20)" (-10, 20) @@ taisho_x (10, 20)
;;

let ex74 () =
  let open Prog_kiso_lib.Ch07 in
  Alcotest.(check @@ pair int int) "chuten (10, 10) (20, 20)" (20, 20)
  @@ chuten (10, 10) (30, 30)
;;

let exercise =
  [ "Exercise 7.1", `Quick, ex71
  ; "Exercise 7.2", `Quick, ex72
  ; "Exercise 7.3", `Quick, ex73
  ; "Exercise 7.4", `Quick, ex74
  ]
;;
