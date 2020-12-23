! 
program gcd
    use, intrinsic :: iso_fortran_env
    implicit none
    integer n, m, getgcd, result, inputed_m, inputed_n
    integer(int64) :: time_begin_c,time_end_c, CountPerSec, CountMax  ! 時間計測用の変数群

    read *, n, m
    inputed_n = n
    inputed_m = m

    
    call system_clock(time_begin_c, CountPerSec, CountMax)
    
    result = getgcd(n, m)
    
    call system_clock(time_end_c)
    
    print *, inputed_n, inputed_m, result
    print *, "Time: ", real(time_end_c - time_begin_c)/CountPerSec,"sec"
end program gcd

function getgcd(a, b)
    implicit none
    integer getgcd, a, b, bx

    do while (a > 0)
        bx = a
        a = mod(b, a)
        b = bx
    end do

    getgcd = b
end function getgcd