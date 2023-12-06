//Examples
enum CategoryType { yo, lo, go, so }

extension CategoryKeyword on CategoryType {
  String get keyword {
    switch (this) {
      case CategoryType.yo:
        return "Yo";
      case CategoryType.lo:
        return "lo";
      case CategoryType.go:
        return "go";
      case CategoryType.so:
        return "so";
    }
  }
}
