program main
    use,intrinsic :: iso_fortran_env
    implicit none

    integer(int32) :: time_begin_c,time_end_c, CountPerSec, CountMax

    call system_clock(time_begin_c, CountPerSec, CountMax)
    call sleep(1)
    call system_clock(time_end_c)

    print *, time_begin_c,time_end_c, CountPerSec,CountMax
    print *, real(time_end_c - time_begin_c)/CountPerSec,"sec"
end program main