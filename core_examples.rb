load './core.rb'
def title(msg)
  puts "------#{msg}-----"
end

title "Tuples (2)"
tuple = Cons[1][2]
puts (Car[tuple] == 1 ? "T" : "F")
puts (Cdr[tuple] == 2 ? "T" : "F")

title "Logic"

title "If True (1)"
If[PrintTrue][PrintFalse][True]
title "If False (1)"
If[PrintTrue][PrintFalse][False]

title "Assert/Refute (2)"
Assert[True]
Refute[False]

title "And (4)"
Assert[And[True][True]]
Refute[And[False][False]]
Refute[And[True][False]]
Refute[And[False][True]]

title "Or (4)"
Assert[Or[True][True]]
Refute[Or[False][False]]
Assert[Or[True][False]]
Assert[Or[False][True]]

title "Not (2)"
Assert[Not[False]]
Refute[Not[True]]
