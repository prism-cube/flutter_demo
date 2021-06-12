enum Metasyntactic {
  Hoge,
  Fuga,
  Piyo,
}

extension MetasyntacticExtension on Metasyntactic {
  static final names = {
    Metasyntactic.Hoge: "hoge",
    Metasyntactic.Fuga: "fuga",
    Metasyntactic.Piyo: "piyo",
  };

  static final values = {
    Metasyntactic.Hoge: "hoge",
    Metasyntactic.Fuga: "fuga",
    Metasyntactic.Piyo: "piyo",
  };

  String get name => names[this]!;
  String get value => values[this]!;
}
