open Printf

let () = printf "%.*f" 4 (Utility_theory.a (fun x -> x*.x) 4.)
