# RoundFast.jl
Fast directed rounding for inline arithmetic.


### using RoundFast

for a,b floating point values, op in {+,-,*,/,sqrt,square} and rounding a rounding mode:
   
   (the rounding modes are RoundNearest, RoundUp, RoundDown, RoundToZero, RoundFromZero)

value = (op)(a,b,rounding)       
     c = (+)(a,b,RoundDown)



**Note that this offers RoundFromZero for Floats, while Julia v0.4 does not.**
