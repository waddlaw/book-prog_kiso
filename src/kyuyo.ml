(* 優遇時給 (円) *)
let yugu_jikyu = 980

let jikyu = 950
let kihonkyu = 100

(* 目的: 働いた時間 x に応じたアルバイト代を計算する *)
(* kyuyo : int -> int *)
let kyuyo x =
  kihonkyu + x * if x < 30 then jikyu else yugu_jikyu

(* テスト *)
let%test _ = kyuyo 25 = 23850
let%test _ = kyuyo 28 = 26700
let%test _ = kyuyo 31 = 30480
