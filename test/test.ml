let () =
  Alcotest.run "プログラミングの基礎"
    [
      ("第2章 基本的なデータ", Test_ch02.exercise);
      ("第3章 変数の定義", Test_ch03.exercise);
      ("第4章 関数の定義", Test_ch04.exercise);
      ("第5章 条件分岐", Test_ch05.exercise);

      ("Kyuyo", Test_kyuyo.exercise);
    ]
