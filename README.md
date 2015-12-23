# RoundFast.jl
Fast directed rounding for inline arithmetic.




#### using RoundFast

Choose the rounding mode to use.  It must be one of these modes.   
{RoundNearest, RoundUp, RoundDown, RoundToZero, RoundFromZero}.   

Apply the arithmetic operator, specifying args and then rounding mode.

```julia

  z  = (*)(gof, gop, RoundFromZero)   # use RoundFromZero with system Floats. 
  
  lo = (-)(a.lo, b.hi, RoundDown)     # interval subtraction, accurately rounded
  hi = (-)(a.hi, b.lo, RoundUp)       # processor settings do not change

```


#### the logical connection
*( see source files for fastrounding implementation)*
```

       RoundDown
       hi  lo  rounding        fastrounding
       --------------------------------------------
       +   +   hi              hi
       +   -   prevfloat(hi)   nextNearerToZero(hi) == prevFloat(hi)
       -   +   hi              hi
       -   -   prevfloat(hi)   nextAwayFromZero(hi) == prevFloat(hi)
       
       RoundUp
       hi  lo  rounding        fastrounding
       --------------------------------------------
       +   +   nextfloat(hi)   nextAwayFromZero(hi) == nextFloat(hi)
       +   -   hi              hi
       -   +   nextfloat(hi)   nextNearerToZero(hi) == nextFloat(hi)
       -   -   hi              hi
       
       RoundFromZero
       hi  lo  rounding        fastrounding
       --------------------------------------------
       +   +   nextfloat(hi)   nextAwayFromZero(hi)
       +   -   hi              hi
       -   +   hi              hi
       -   -   prevfloat(hi)   nextAwayFromZero(hi
       
       RoundToZero
       hi  lo  rounding        fastrounding
       --------------------------------------------
       +   +   hi              hi
       +   -   prevfloat(hi)   nextNearerToZero(hi)
       -   +   nextfloat(hi)   nextNearerToZero(hi)
       -   -   hi              hi
       
      RoundNearest
       hi  lo  rounding        fastrounding
       --------------------------------------------
       +   +   hi              hi
       +   -   hi              hi
       -   +   hi              hi
       -   -   hi              hi
```

