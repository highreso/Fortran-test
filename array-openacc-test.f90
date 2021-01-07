program main
  use, intrinsic :: iso_fortran_env  ! int64型を使うのに必要
  implicit none
  integer(2) :: i, j
  integer :: a(0:9999, 0:9999)  ! 配列を宣言（癖で０からにしちゃった）
  integer(int64) :: time_begin_c,time_end_c, CountPerSec  ! 時間計測用の変数群

  call system_clock(time_begin_c, CountPerSec)
  
  ! 以下の処理を並列化したいよ～
  !$acc kernels
  do j = 0, 9999
    do i = 0, 9999
      A(i, j) = 0
      ! print *, A(i, j)
    end do
  end do
  !$acc end kernels

  call system_clock(time_end_c)
  print *, "Time: ", real(time_end_c - time_begin_c)/CountPerSec,"sec"
end program main