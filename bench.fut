import "lib/github.com/diku-dk/segmented/segmented"

entry random_shape a b n m =
  iota n
  |> map (\x -> (a * (1 + x) + b) %% m)

entry replicate_shape (n: i64) (a: i64) =
  replicate n a

-- ==
-- entry: bench_repl_segm_iota bench_replicated_iota
-- script input { random_shape 32131i64 1321337i64 10000000 50 }
-- script input { random_shape 32131i64 1321337i64 5000 100000 }
-- script input { replicate_shape 1000 200000 }
-- script input { replicate_shape 100000000 1 }
-- script input { replicate_shape 200000000 0 }
entry bench_repl_segm_iota = repl_segm_iota
entry bench_replicated_iota = replicated_iota
