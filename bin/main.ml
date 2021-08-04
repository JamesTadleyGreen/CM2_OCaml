open Printf
open Owl

let () = printf "%.*f" 4 (Stats.gaussian_pdf 1. ~mu:0. ~sigma:1.) 
(* let () = printf "%.*f" 4 (Cm2.Integration.a (fun x -> x*.x) 4.) *)

let () = Mat.print (Cm2.Optimisation.simul_solver Cm2.Optimisation.matrix Cm2.Optimisation.solution)
