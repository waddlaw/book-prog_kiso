let () =
  Alcotest.run "プログラミングの基礎"
    [ ("第2章 基本的なデータ", Test_ch02.exercise); ("第3章 変数の定義", Test_ch03.exercise) ]
