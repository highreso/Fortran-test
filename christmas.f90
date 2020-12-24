program MerryChristmas
    implicit none
    integer flag
    character(len=52) str

    print *, 'クリスマスの予定の有無を1/0で入力してください（1: 予定あり, 0: 予定なし）。'

    read *, flag

    if (flag == 0) then
        str = '筆者といっしょですね！'
    else
        str = '楽しんで下さいね！（血涙）'
    end if
    
    print *, str
    
end program MerryChristmas