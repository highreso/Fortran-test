program CallingGcdFunction
    implicit none
    integer n, m, getgcd, inputed_m, inputed_n

    read *, n, m
    inputed_n = n
    inputed_m = m
    
    print *, inputed_n, inputed_m, getgcd(n, m) ! 関数の呼び出しは実引数をセットするだけでおーけー！
end program CallingGcdFunction

! 以下では２数間の最大公約数を求める関数getgcdを定義します。
! 引数は２つinteger型です。
function getgcd (a, b)
    implicit none
    integer getgcd, a, b, bx

    do while (a > 0)
        bx = a
        a = mod(b, a)
        b = bx
    end do

    getgcd = b
end function getgcd