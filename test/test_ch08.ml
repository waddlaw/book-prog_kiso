let ex84 () =
  let open Prog_kiso_lib.Ch08 in
  let me =
    {
      name = "wado";
      height = 100.0;
      weight = 50.0;
      birth = "aaa";
      blood_type = "AB";
    }
  in
  Alcotest.(check string) "ketsueki_hyoji" "dummy" @@ ketsueki_hyoji me

let exercise = [ ("Exercise 8.4", `Quick, ex84) ]
