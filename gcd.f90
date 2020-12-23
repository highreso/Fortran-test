! 入力→gcdの出力をCtrl + d でexitされるまで繰り返す
program gcd
    implicit none
    integer n, m, getgcd, state

    do 
        read (*, *, iostat=state) n, m
        
        ! 入力がなくなったらループ終了
        if (state /= 0) then
            exit
        end if

        print *, n, m, getgcd(n, m)
    end do
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