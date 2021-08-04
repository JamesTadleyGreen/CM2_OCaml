open Owl
open Mat

let simul_solver mat soln = inv mat *@ soln

let matrix = of_array [|1.; 2.; 3.; -.5.|] 2 2
let solution = of_array [|4.; 1.|] 1 2

let () = print (simul_solver matrix solution)
