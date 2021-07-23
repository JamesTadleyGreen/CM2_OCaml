open Owl

(* Q4.5 *)

let nrv = Stats.gaussian_pdf ~mu:1. ~sigma:1.

(* a. *)
let () = print_float (Cm2.Measures_of_investment_risk.var_of_ret (Stats.gaussian_pdf ~mu:150_000. ~sigma:(100_000.)) 150_000.) 

(* let () = print_float (Stats.gaussian_pdf ~mu:150_000. ~sigma:(100_000.) 0.)  *)

let () = print_float (Cm2.Measures_of_investment_risk.shortfall_prob (Stats.gaussian_pdf ~mu:150_000. ~sigma:(100_000.)) 50_000.) 
