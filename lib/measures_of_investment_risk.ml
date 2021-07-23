let min, max, step = (-.1_000_000., 11_000_000., 100_000)

let general_var_of_ret hi lo fx mu = Integration.integrate (fun x -> (mu -. x) *. 2. *. (fx x)) lo hi step

let var_of_ret = general_var_of_ret max min

let semi_var_of_ret fx mu = general_var_of_ret mu min fx mu

let shortfall_prob fx l = Integration.integrate fx min l step
