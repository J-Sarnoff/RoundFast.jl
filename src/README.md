
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
