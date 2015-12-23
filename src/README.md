
#### This is fast rounding

    a.	(*) 			 arithmetic operation to apply
    b.	(RoundToZero)	 directed rounding mode to use
    c.	(1.7635, 1.3570) values to which the operation shall apply 
    
```julia
    p = 1.7635_0f0;
    r = 1.3570_0f0;

    result  = (*)(p, r, RoundToZero) 
    2.3930693_0f0

    result  = (*)(p, r, RoundFromZero)     # RoundFromZero with Float32, Float64
    2.3930695_0f0                          # ( for the scrapbook, a Julia first )
    
```

##### This is round fast
Some applications require Frequent Resetting of and Cascaded Changes to the floating point rounding mode.  
Most users are very motivated to avoid this temporal drain.  Some users will find RoundFast is in use.

The Rounding Mode is not changed and the rounding directed arithmetic continues to give correct results.
````ruby
Directed Rounding is performed with accurate knowledge of the insignificant part of the RoundNearest result.
Seeking to calculate with rounding mode RoundingDown, and having the result of the calculation in RoundNearest,
*and knowing the insignificant part of the result, the part too small to store with the significant result,
 is positive: the result calculated RoundingDown is prevfloat( the result in RoundNearest ).
```
            
 
