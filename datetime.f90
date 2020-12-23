program DataTime
    implicit none
    integer d(0:8)

    call date_and_time(values=d)

    print *, d
end program DataTime