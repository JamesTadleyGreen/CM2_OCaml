open Printf
open Owl

let () = printf "%.*f" 4 (Stats.gaussian_pdf 1. ~mu:0. ~sigma:1.) 
(* let () = printf "%.*f" 4 (Cm2.Integration.a (fun x -> x*.x) 4.) *)
