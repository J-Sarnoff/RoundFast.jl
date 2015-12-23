# RoundFast.jl
Fast directed rounding for inline arithmetic.


##### RoundFromZero with Float64
Julia v0.4 does, now.


#### using RoundFast

for a,b floating point values, op in {+,-,*,/,sqrt,square} and rounding a rounding mode:
   
   (the rounding modes are RoundNearest, RoundUp, RoundDown, RoundToZero, RoundFromZero)

value = (op)(a,b,rounding)       
     c = (+)(a,b,RoundDown)

