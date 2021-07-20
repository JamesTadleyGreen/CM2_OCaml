let var_of_ret fx mu = let (_, meth) = List.hd Integration.methods in Integration.integrate (fun x -> (mu -. x) *. 2. *. (fx x)) (-.100.) 100. 50 meth 
