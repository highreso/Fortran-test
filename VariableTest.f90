program VariableTest
    implicit none   ! バグ除けのお守り
    real(8) x
    x = 1
    print *, x
    x = x/2 + 1/x
    print *, x
    x = x/2 + 1/x
    print *, x
    x = x/2 + 1/x
    print *, x
end program VariableTest