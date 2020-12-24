program ArrayTest
    implicit none
    integer a(0:9)  ! 配列の宣言の際必要なのは型と配列長さです 

    print *, a  ! 配列はそのままprint文で出力できます

    a = (/1,2,3,4,5,6,7,8,32767,0/)  ! //で囲んで代入可能です
    print *, a

    a(4) = 14  ! indexを指定して置き換えることも可能です
    print *, a

    a(5:6) = (/15, 16/)  ! indexの範囲を指定して置き換えることも可能です
    print *, a

    a(7:9) = a(7:9) + 1  ! 配列の全要素に１が加算されます
    print *, a
    
    a = -a  ! 配列の全要素の符号を反転させます
    print *, a
end program ArrayTest