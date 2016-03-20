let mult10 i = i * 10;;

let nonZero a b =
  match (a, b) with
  | (0, 0) -> false
  | (_, _) -> true;;

let rec sumRec i =
  match i with
  | 0 -> 0
  | i -> i + sumRec (i - 1);;

let rec power v n =
  match (v, n) with
  | (0, _) -> 0
  | (1, _) -> 1
  | (_, 0) -> 1
  | (_, 1) -> v
  | (_, _) -> v * power v (n - 1);;

let is_con v =
  match v with
  | 'a' | 'e' | 'i' | 'o' | 'u' -> false
  | _ -> true;;

let rec factSubZero n =
  match n with
  | 0 -> 0
  | -1 -> -1
  | 1 -> 1
  | _ -> n * factSubZero (if n < 0 then (n + 1) else (n - 1))
;;
