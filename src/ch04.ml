(* ex 4.1 *)
let baito_kyuyo y h = (850 + (y * 100)) * h

let%test _ = baito_kyuyo 0 10 = 8500
let%test _ = baito_kyuyo 10 10 = 18500

(* ex 4.2 *)
let jikoshokai name = "私の名前は" ^ name ^ "です"

let%test _ = jikoshokai "wado" = "私の名前はwadoです"

(* ex 4.3 *)
let hyojun_taiju m = (m ** 2.) *. 22.

let%test _ = hyojun_taiju 1.73 = 65.8438

(* ex 4.4 *)
let bmi m kg = kg /. (m ** 2.)

let%test _ = bmi 1.85 78.9 = 23.0533235938641354

(* ex 4.6 *)
let tsuru_no_ashi n = n * 2

let%test _ = tsuru_no_ashi 2 = 4
let%test _ = tsuru_no_ashi 5 = 10
let%test _ = tsuru_no_ashi 10 = 20

let kame_no_ashi n = n * 4

let%test _ = kame_no_ashi 2 = 8
let%test _ = kame_no_ashi 5 = 20
let%test _ = kame_no_ashi 10 = 40

(* ex 4.7 *)
let tsurukame_no_ashi n m = tsuru_no_ashi n + kame_no_ashi m

let%test _ = tsurukame_no_ashi 2 3 = 16
let%test _ = tsurukame_no_ashi 0 4 = 16
let%test _ = tsurukame_no_ashi 5 5 = 30

(* ex 4.8 *)
let tsurukame s1 s2 =
  let n = tsuru_no_ashi s1 in
  let d = (s2 - n) / 2 in
  s1 - d

let%test _ = tsurukame 8 26 = 3
let%test _ = tsurukame 100 274 = 63
