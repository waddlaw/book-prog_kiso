let yaoya_list = [ ("トマト", 300); ("たまねぎ", 200); ("にんじん", 150); ("ほうれん草", 200) ]

let rec price item yaoya_list =
  match yaoya_list with
  | [] -> None
  | (yasai, nedan) :: rest ->
      if item = yasai then Some nedan else price item rest

let rec total_price yasai_list yaoya_list =
  match yasai_list with
  | [] -> 0
  | first :: rest -> (
      match price first yaoya_list with
      | None -> total_price rest yaoya_list
      | Some p -> p + total_price rest yaoya_list)

(* 問題 18.2 *)
let rec count_urikire_yasai yasai_list yaoya_list =
  match yasai_list with
  | [] -> 0
  | first :: rest -> (
      match price first yaoya_list with
      | None -> 1 + count_urikire_yasai rest yaoya_list
      | Some _ -> 0 + count_urikire_yasai rest yaoya_list)

(* 18.3 *)
let rec total_price2 yasai_list yaoya_list =
  match yasai_list with
  | [] -> Some 0
  | first :: rest -> (
      match price first yaoya_list with
      | None -> None
      | Some p -> (
          match total_price2 rest yaoya_list with
          | None -> None
          | Some q -> Some (p + q)))
