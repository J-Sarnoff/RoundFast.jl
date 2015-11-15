# RoundFast.jl
fast directed rounding for inline arithmetic

inline directed rounding for +,- are 10x faster than with_rounding() do (op)(a,b) end

inline directed rounding for *,/,sqrt are 2x faster without hardware fma, probably 10x faster with hardware fma

using RoundFast

for a,b floating point values and rounding a rounding mode
where op is +,-,*,/,sqrt,square

(op)(a,b,rounding)

(+)(a,b,RoundUp),
  (-)(a,b,RoundDown),  

(*)(a,b,RoundToZero),
  (/)(a,b,RoundFromZero),

(sqrt)(a,RoundNearest)

