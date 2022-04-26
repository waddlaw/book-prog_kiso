let e = 2.7182 (* ex311 *)
let positive = e > 0.0 (* ex312 *)
let seconds_of_day = 60 * 60 * 24 (* ex313 *)
let name = "茗荷谷" (* ex314 *)

let%test _ = e = 2.7182
let%test _ = positive = true
let%test _ = seconds_of_day = 86400
let%test _ = name = "茗荷谷"

(* let ex 3.2
   = 1.0 +. e *. 2.0
   = 1.0 +. (e *. 2.0)
   = 1.0 +. (2.7182 *. 2.0)
   = 1.0 +. 5.4364
   = 6.4364
*)
