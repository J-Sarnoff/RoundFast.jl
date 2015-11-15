# RoundFast.jl
fast directed rounding for inline arithmetic


using RoundFast

for a,b floating point values and rounding a rounding mode
where op is +,-,*,/,sqrt,square

(op)(a,b,rounding)

(+)(a,b,RoundUp),
  (-)(a,b,RoundDown),  

(*)(a,b,RoundToZero),
  (/)(a,b,RoundFromZero),

(sqrt)(a,RoundNearest)

