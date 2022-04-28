let ex511 = if 2 < 1 then 3 else 4

(* let ex512 = if "true" then 3.14 else 2.72 *)
let ex513 = if "a" = "b" then false else true

(* let ex514 = if true < false then 1 else "2" *)
let ex515 = if not (3 = 4) then 1 < 2 else 1 > 2

let%test _ = ex511 = 4
let%test _ = ex513 = true
let%test _ = ex515 = true

let abs_value x = if x > 0.0 then x else -.x

let%test _ = abs_value 2.8 = 2.8
let%test _ = abs_value (-2.8) = 2.8
let%test _ = abs_value 0.0 = 0.0

(* ex 5.2 *)
let jikan t = if t < 12 then "午前" else "午後"

(* ex 5.3 *)
let seiza m d =
  if (m = 3 && 21 <= d && d <= 31) || (m = 4 && 1 <= d && d <= 19) then "おひつじ座"
  else if (m = 4 && 20 <= d && d <= 30) || (m = 5 && 1 <= d && d <= 20) then
    "おうし座"
  else if (m = 5 && 21 <= d && d <= 31) || (m = 6 && 1 <= d && d <= 21) then
    "ふたご座"
  else if (m = 6 && 22 <= d && d <= 30) || (m = 7 && 1 <= d && d <= 22) then
    "かに座"
  else if (m = 7 && 23 <= d && d <= 31) || (m = 8 && 1 <= d && d <= 22) then
    "しし座"
  else if (m = 8 && 23 <= d && d <= 31) || (m = 9 && 1 <= d && d <= 22) then
    "おとめ座"
  else if (m = 9 && 23 <= d && d <= 30) || (m = 10 && 1 <= d && d <= 23) then
    "てんびん座"
  else if (m = 10 && 24 <= d && d <= 31) || (m = 11 && 1 <= d && d <= 22) then
    "さそり座"
  else if (m = 11 && 23 <= d && d <= 30) || (m = 12 && 1 <= d && d <= 21) then
    "いて座"
  else if (m = 12 && 22 <= d && d <= 31) || (m = 1 && 1 <= d && d <= 19) then
    "やぎ座"
  else if (m = 1 && 20 <= d && d <= 31) || (m = 2 && 1 <= d && d <= 18) then
    "みずがめ座"
  else if (m = 2 && 19 <= d && d <= 29) || (m = 3 && 1 <= d && d <= 20) then
    "うお座"
  else "入力値が不正です"

let kaiteki t = 15 <= t && t <= 25

let%test _ = kaiteki 7 = false
let%test _ = kaiteki 15 = true
let%test _ = kaiteki 20 = true
let%test _ = kaiteki 25 = true
let%test _ = kaiteki 28 = false

let kion t = if kaiteki t then "快適" else "普通"

let%test _ = kion 7 = "普通"
let%test _ = kion 15 = "快適"
let%test _ = kion 20 = "快適"
let%test _ = kion 25 = "快適"
let%test _ = kion 28 = "普通"

(* ex 5.4 *)
let hanbetsushiki a b c = (b ** 2.) -. (4. *. a *. c)

(* ex 5.5 *)
let kai_no_kosuu a b c =
  let d = hanbetsushiki a b c in
  if d > 0. then 2 else if d = 0. then 1 else 0

(* ex 5.6 *)
let kyosuukai a b c = kai_no_kosuu a b c = 0

(* ex 5.7 *)
let taikei m kg =
  let open Ch04 in
  let v = bmi m kg in
  if v < 18.5 then "やせ"
  else if v < 25.0 then "標準"
  else if v < 30.0 then "肥満"
  else "高度肥満"
