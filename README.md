# Fortranまとめ
[重要]fortran 90(`.f90`)を使用する
[Fortran によるプログラミング超入門](http://www.cc.kyoto-su.ac.jp/~tanigawa/materials/oyo/text/Intro_fortran.pdf)をベースとする

## 最終成果物
1. ユークリッド互除法？(gcd.f90, PDF 9.3) --- 配列が含まれず -> これにしよう, 配列の解説も一応やる
nvfortran -acc -O2 -Minfo=accel -o gcd_with_system_clock_OpenACC  gcd_with_system_clock_OpenACC.f90

https://github.com/highreso/OpenACC-intro-test/blob/master/laplace2.f90

## コンパイルの方法
1. OpenACCによる並列化無の場合
```bash
nvfortran  laplace.f90 -o laplace_without_OpenACC
```

2. OpenACCで並列化する場合
```bash
nvfortran -acc -O2 -Minfo=accel laplace.f90 -o laplace_with_OpenACC
```

3. Makefileを作ってコンパイルするのも良し


## 文法のまとめ
### サブルーチン(戻り値や引数無しの関数)の定義法
SubroutineTest.f90

### 変数
VariableTest.f90

### ループ（while）
repeating.f90

### 関数（戻り値あり関数）
NewFunc.f90

### 条件分岐(if)
NewFunc.f90

### 入力(キーボードから入力を受け付けるプログラム)
input.f90

### 配列
arraytest.f90