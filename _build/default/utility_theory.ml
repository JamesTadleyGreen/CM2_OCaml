open Printf

let compose f g = fun x -> f (g x);;

let rec power f n = 
  if n = 0 then fun x -> x 
  else compose f (power f (n - 1));;

let d fx =
  let dx = 0.001 in 
  fun x -> (fx (x+.dx) -. fx x) /. dx;;

(* let () = printf "%.*f" 10  (d (fun x -> x*.x) 2.);; *)

let d2 = 
  power (d) 2;;

let a u w = -.d2 u w 


let () = printf "%.*f" 9  (d2 (fun x -> x*.x) 4.);;  
