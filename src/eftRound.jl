
#=
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
=#


@inline eftRound{T<:AbstractFloat}(hi::T, lo::T, ::RoundingMode{:ToZero}) = 
    (lo == zero(T) ? hi : (signbit(hi)!=signbit(lo) ? nextNearerToZero(hi) : hi))

@inline eftRound{T<:AbstractFloat}(hi::T, lo::T, ::RoundingMode{:FromZero}) = 
    (lo == zero(T) ? hi : (signbit(hi)==signbit(lo) ? nextAwayFromZero(hi) : hi))

@inline eftRound{T<:AbstractFloat}(hi::T, lo::T, ::RoundingMode{:Up}) = 
    (lo == zero(T) ? hi : (signbit(lo) ? hi : nextFloat(hi)))

@inline eftRound{T<:AbstractFloat}(hi::T, lo::T, ::RoundingMode{:Down}) = 
    (lo == zero(T) ? (signbit(lo) ? prevFloat(hi) : hi))

@inline eftRound{T<:AbstractFloat}(hi::T, lo::T, ::RoundingMode{:Nearest}) = 
    (hi)
