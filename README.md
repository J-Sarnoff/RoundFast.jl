# RoundFast.jl
Fast directed rounding for inline arithmetic.




#### using RoundFast

Choose the rounding mode to use.  It must be one of these modes.   
{RoundNearest, RoundUp, RoundDown, RoundToZero, RoundFromZero}.   
                                                     ^^^^------------- works with Float32, Float64

value = (op)(a,b,rounding)       
     c = (+)(a,b,RoundDown)
     
```julia

  lo = (-)(a.lo, b.hi, RoundDown)
  hi = (-)(a.hi, b.lo, RoundUp)

##### RoundFromZero with Float64
This does that.
