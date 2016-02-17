# RoundFast.jl
Fast directed rounding for inline arithmetic.




#### using RoundFast

Choose the rounding mode to use.  It must be one of these modes.   
{RoundNearest, RoundUp, RoundDown, RoundToZero, RoundFromZero}.

Note that this offers RoundFromZero for Floats, while Julia v0.5 does not.

Apply the arithmetic operator, specifying args and then rounding mode.

```julia

  lo = (+)(a, b, RoundDown)     # interval addition, accurately rounded
  hi = (+)(a, b, RoundUp)       # processor settings do not change

  lo = (sqrt)(a, RoundDown)     # interval sqrt, accurately rounded
  hi = (sqrt)(a, RoundUp)       # processor settings do not change
```

These arithmetic operations are supported: +, -, *, /, sqr, sqrt.

see src/README.md for more information
