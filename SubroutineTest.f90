program SubroutineTest
! ここで関数を呼ぶよ～
    call English
    call Spanish
end program SubroutineTest


!! 以下サブルーチン（まあ、関数）を定義する
subroutine English
    print *, 'How are you?'
end subroutine English

subroutine Spanish
    print *, '?Commo esta usted?'
end subroutine Spanish

subroutine French
    print *, 'Comment allez-vous?'
end subroutine French
!! サブルーチン定義ここまで
