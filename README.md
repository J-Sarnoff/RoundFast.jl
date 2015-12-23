# RoundFast.jl
Fast directed rounding for inline arithmetic.




#### using RoundFast

Choose the rounding mode to use.  It must be one of these modes.   
{RoundNearest, RoundUp, RoundDown, RoundToZero, RoundFromZero}.   

```julia

  z  = (*)(gof, gop, RoundFromZero)   # use RoundFromZero with system Floats. 

  lo = (-)(a.lo, b.hi, RoundDown)
  hi = (-)(a.hi, b.lo, RoundUp)

```
