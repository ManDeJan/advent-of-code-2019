my &m-to-f = * div 3 - 2;
lines\
    .map(*.Int.&m-to-f)\ # "30 60 134" -> (8 18 42) 
    .map(-> $f { |($f, &m-to-f …^ * ≤ 0) })\ # (8 18 42) -> (8 18 4 42 12 2)
    .sum\ # 86
    .say;
