type gakusei_t = { namae : string; tensuu : int; seiseki : string }

(* ex 8.1 *)
type book_t = {
  title : string;
  author : string;
  publish : string;
  price : int;
  isbn : string;
}

(* ex 8.2 *)
type okozukai_t = { name : string; price : int; shop : string; date : string }

(* ex 8.3 *)
type person_t = {
  name : string;
  height : float;
  weight : float;
  birth : string;
  blood_type : string;
}

let mkPerson name height weight birth blood_type =
  { name; height; weight; birth; blood_type }

let hyoka gakusei =
  match gakusei with
  | { namae = n; tensuu = t; _ } ->
      if t >= 80 then { namae = n; tensuu = t; seiseki = "A" }
      else if t >= 70 then { namae = n; tensuu = t; seiseki = "B" }
      else if t >= 60 then { namae = n; tensuu = t; seiseki = "C" }
      else { namae = n; tensuu = t; seiseki = "D" }

let%test _ =
  hyoka { namae = "asai"; tensuu = 90; seiseki = "" }
  = { namae = "asai"; tensuu = 90; seiseki = "A" }

let%test _ =
  hyoka { namae = "asai"; tensuu = 80; seiseki = "" }
  = { namae = "asai"; tensuu = 80; seiseki = "A" }

let%test _ =
  hyoka { namae = "asai"; tensuu = 75; seiseki = "" }
  = { namae = "asai"; tensuu = 75; seiseki = "B" }

let%test _ =
  hyoka { namae = "asai"; tensuu = 70; seiseki = "" }
  = { namae = "asai"; tensuu = 70; seiseki = "B" }

let%test _ =
  hyoka { namae = "asai"; tensuu = 65; seiseki = "" }
  = { namae = "asai"; tensuu = 65; seiseki = "C" }

let%test _ =
  hyoka { namae = "asai"; tensuu = 60; seiseki = "" }
  = { namae = "asai"; tensuu = 60; seiseki = "C" }

let%test _ =
  hyoka { namae = "asai"; tensuu = 55; seiseki = "" }
  = { namae = "asai"; tensuu = 55; seiseki = "D" }

(* ex 8.4 *)
let ketsueki_hyoji person = person.name ^ "さんの血液型は" ^ person.blood_type ^ "型です"

(* ex 8.5 *)
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}

(* ex 8.6 *)
let hyoji ekimei =
  ekimei.shozoku ^ ", " ^ ekimei.kanji ^ "(" ^ ekimei.kana ^ ")"

let%test _ =
  hyoji
    { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" }
  = "丸ノ内線, 茗荷谷(みょうがだに)"

(* ex 8.7 *)
type ekikan_t = {
  kiten : string;
  shutenn : string;
  keiyu : string;
  kyori : float;
  jikan : int;
}
