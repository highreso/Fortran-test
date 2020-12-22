# Fortranまとめ
[重要]fortran 90(`.f90`)を使用する

## 最終成果物
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