# RoundFast.jl
Fast directed rounding for inline arithmetic.




#### using RoundFast

Choose the rounding mode to use.  It must be one of these modes.
{:RoundNearest, :RoundUp, :RoundDown, :RoundToZero, :RoundFromZero}.

for a,b floating point values, op in {+,-,*,/,sqrt,square} and rounding a rounding mode:
   
   (the rounding modes are RoundNearest, RoundUp, RoundDown, RoundToZero, RoundFromZero)

value = (op)(a,b,rounding)       
     c = (+)(a,b,RoundDown)


##### RoundFromZero with Float64
This does that.
