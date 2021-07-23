(* From: https://rosettacode.org/wiki/Numerical_integration#OCaml *)

let gen_integrate meth f a b steps =
  let h = (b -. a) /. float_of_int steps in
    let rec helper i s =
          if i >= steps then s
          else helper (succ i) (s +. meth f (a +. h *. float_of_int i) h)
    in
    h *. helper 0 0.

let methods = [
        ( "simp",   fun f x h -> (f x +. 4. *. f (x +. h /. 2.) +. f (x +. h)) /. 6. );
        ( "rect_l", fun f x _ -> f x);
        ( "rect_m", fun f x h -> f (x +. h /. 2.) );
        ( "rect_r", fun f x h -> f (x +. h) );
        ( "trap",   fun f x h -> (f x +. f (x +. h)) /. 2. )
  ]

let integrate = let (_, simp) = List.hd methods in gen_integrate simp 
