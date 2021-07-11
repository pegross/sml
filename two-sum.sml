(* @see https://leetcode.com/problems/two-sum/ *)

val nums = [2,7,11,15,18,21,22,29];
val target = 43;

fun sum_from_indices(x: int, y: int, list: int list): int list =
  if x <> y andalso ((List.nth (list, x) + List.nth (list, y)) = target)
    then [x, y]
  else if y < (List.length list - 1)
    then sum_from_indices(x, y + 1, list)
    else if x < (List.length list - 1)
    then sum_from_indices(x + 1, 0, list)
    else []
;

sum_from_indices(0, 0, nums);