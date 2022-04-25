let ex211 = 7 - (3 * 4)
let ex212 = 7 / 2 * 2
let ex213 = 7 * 2 / 2
let ex221 = 2. *. 3.14 *. 10.
let ex222 = 1.73 ** 2.
let ex223 = 7. /. 2.
let ex231 = "東京" ^ "特許" ^ "許可局" ^ "局長"
let ex232 = "関数" ^ "型" ^ "言語"
let ex241 = 2 > 3
let ex242 = not (3.1415 ** 2. > 10.)
let ex243 = 8 mod 3 = 2
let ex244 = 3 + 4 + 5 = 4 * 3

(* ppx_inline_test *)
let%test _ = ex211 = -5
let%test _ = ex212 = 6
let%test _ = ex213 = 7
let%test _ = ex221 = 62.8000000000000043
let%test _ = ex222 = 2.9929
let%test _ = ex223 = 3.5
let%test _ = ex231 = "東京特許許可局局長"
let%test _ = ex232 = "関数型言語"
let%test _ = ex241 = false
let%test _ = ex242 = true
let%test _ = ex243 = true
let%test _ = ex244 = true
