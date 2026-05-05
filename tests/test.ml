#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 91; capacity = 76; latency = 12; risk = 17; weight = 10 };;
expect (score signal_case_1 = 192);;
expect (classify signal_case_1 = "accept");;
let signal_case_2 = { demand = 97; capacity = 93; latency = 26; risk = 14; weight = 11 };;
expect (score signal_case_2 = 217);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 96; capacity = 100; latency = 24; risk = 12; weight = 8 };;
expect (score signal_case_3 = 220);;
expect (classify signal_case_3 = "accept");;
