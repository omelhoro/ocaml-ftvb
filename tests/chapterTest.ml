open OUnit2;;
open Chapter2;;

let task1_fn (n, res) = "test" >:: (fun test_ctxt -> assert_equal (mult10 n) res);;
let task1 = "Task 1" >::: (List.map task1_fn
                             [
                               (10, 100);
                               (4, 40);
                               (50, 500);
                               (0, 0)
                             ]);;

let task2_fn (a, b, res) = "task2" >:: (fun test_ctxt -> assert_equal (nonZero a b) res);;
let task2 = "Task 2" >:::
            (List.map task2_fn
               [
                 (0, 0, false);
                 (1, 0, true);
                 (1, 1, true)]);;

let task3_fn = (fun (v, out) -> "test3" >:: (fun x -> assert_equal (sumRec v) out));;
let task3 = "Task 3" >::: List.map task3_fn [(4, 10); (0, 0); (1, 1); (3, 6)];;

let task4_fn = (fun (v, n, out) -> "test4" >:: (fun x -> assert_equal (power v n) out));;
let task4 = "Task 4" >::: List.map task4_fn [(2, 2, 4); (5, 2, 25); (1, 4, 1); (2, 5, 32); (4, 0, 1)];;

let task5_fn = (fun (c, out) -> "test5" >:: (fun x -> assert_equal (is_con c) out));;
let task5 = "Task 5" >::: List.map task5_fn [('b', true); ('a', false); ('j', true); ('u', false)];;

let task7_fn = (fun (c, out) -> "test7" >:: (fun x -> assert_equal (factSubZero c) out));;
let task7 = "Task 7" >::: List.map task7_fn [(0, 0); (-4, 24); (-3, -6); (4, 24)];;

let _ =
  run_test_tt_main (test_list [task1; task2; task3; task4; task5; task7]);;
