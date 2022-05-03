(* ex 7.1 *)
let goukei_to_heikin kokugo sugaku eigo rika syakai =
  let goukei = kokugo + sugaku + eigo + rika + syakai in
  let heikin = float_of_int goukei /. 5. in
  (goukei, heikin)

let add pair = match pair with
  (a,b) -> a+b

let%test _ = add (0, 0) = 0
let%test _ = add (3, 5) = 8
let%test _ = add (3, -5) = -2

let add2 a b = a + b
let%test _ = add2 3 5 = 8

(* ex 7.2 *)
let seiseki (name, result) = name ^ "さんの評価は" ^ result ^ "です"

(* ex 7.3 *)
let taisho_x (x, y) = (-x, y)

(* ex 7.4 *)
let chuten (x1, y1) (x2, y2) =
  let chuten_x x1 x2 = (x1 + x2) / 2 in
  let chuten_y y1 y2 = (y1 + y2) / 2 in
  (chuten_x x1 x2, chuten_y y1 y2)
