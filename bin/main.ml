open Printf

let () = printf "%.*f" 4 (Cm2.Utility_theory.a (fun x -> x*.x) 4.)
(* let () = printf "%.*f" 4 (Cm2.Integration.a (fun x -> x*.x) 4.) *)
