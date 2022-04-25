(* A module with functions to test *)
module To_test = struct
  let ex211 = Prog_kiso_lib.Ch02.ex211
  let ex212 = Prog_kiso_lib.Ch02.ex212
  let ex213 = Prog_kiso_lib.Ch02.ex213
  let ex221 = Prog_kiso_lib.Ch02.ex221
  let ex222 = Prog_kiso_lib.Ch02.ex222
  let ex223 = Prog_kiso_lib.Ch02.ex223
  let ex231 = Prog_kiso_lib.Ch02.ex231
  let ex232 = Prog_kiso_lib.Ch02.ex232
  let ex241 = Prog_kiso_lib.Ch02.ex241
  let ex242 = Prog_kiso_lib.Ch02.ex242
  let ex243 = Prog_kiso_lib.Ch02.ex243
  let ex244 = Prog_kiso_lib.Ch02.ex244
end

(* The tests *)
let test_ex211 () = Alcotest.(check int) "7 - 3 * 4" (-5) To_test.ex211
let test_ex212 () = Alcotest.(check int) "7 / 2 * 2" 6 To_test.ex212
let test_ex213 () = Alcotest.(check int) "7 * 2 / 2" 7 To_test.ex213
let e = epsilon_float

let test_ex221 () =
  Alcotest.(check @@ float e) "2 * 3.14 * 10" 62.8000000000000043 To_test.ex221

let test_ex222 () = Alcotest.(check @@ float e) "1.73 ^ 2" 2.9929 To_test.ex222
let test_ex223 () = Alcotest.(check @@ float e) "7 / 2" 3.5 To_test.ex223

let test_ex231 () =
  Alcotest.(check string) "東京特許許可局局長" "東京特許許可局局長" To_test.ex231

let test_ex232 () = Alcotest.(check string) "関数型言語" "関数型言語" To_test.ex232

let test_ex241 () = Alcotest.(check bool) "2 > 3" false To_test.ex241

let test_ex242 () =
  Alcotest.(check bool) "not (3.1415 ** 2. > 10.)" true To_test.ex242

let test_ex243 () = Alcotest.(check bool) "8 mod 3 = 2" true To_test.ex243
let test_ex244 () = Alcotest.(check bool) "3+4+5 = 4*3" true To_test.ex244

(* Run it *)
let () =
  let open Alcotest in
  run "ch02"
    [
      ("ex211", [ test_case "calc int" `Quick test_ex211 ]);
      ("ex212", [ test_case "calc int" `Quick test_ex212 ]);
      ("ex213", [ test_case "calc int" `Quick test_ex213 ]);
      ("ex221", [ test_case "calc float" `Quick test_ex221 ]);
      ("ex222", [ test_case "calc float" `Quick test_ex222 ]);
      ("ex223", [ test_case "calc float" `Quick test_ex223 ]);
      ("ex231", [ test_case "calc string" `Quick test_ex231 ]);
      ("ex232", [ test_case "calc string" `Quick test_ex232 ]);
      ("ex241", [ test_case "calc bool" `Quick test_ex241 ]);
      ("ex242", [ test_case "calc bool" `Quick test_ex242 ]);
      ("ex243", [ test_case "calc bool" `Quick test_ex243 ]);
      ("ex244", [ test_case "calc bool" `Quick test_ex244 ]);
    ]
