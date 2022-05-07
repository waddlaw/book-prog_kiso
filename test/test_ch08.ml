let ex84 () =
  let open Prog_kiso_lib.Ch08 in
  let me = mkPerson "wado" 100.0 50.0 "aaa" "AB" in
  Alcotest.(check string) "ketsueki_hyoji" "wadoさんの血液型はAB型です"
  @@ ketsueki_hyoji me

let exercise = [ ("Exercise 8.4", `Quick, ex84) ]
