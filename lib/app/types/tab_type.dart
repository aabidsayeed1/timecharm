import 'package:flutter/cupertino.dart';

//Examples
enum TabType { yo, go, so }

extension TabItem on TabType {
  Icon get icon {
    switch (this) {
      case TabType.yo:
        return const Icon(CupertinoIcons.home, size: 25);
      case TabType.go:
        return const Icon(CupertinoIcons.news, size: 25);
      case TabType.so:
        return const Icon(CupertinoIcons.person, size: 25);
    }
  }

  String get title {
    switch (this) {
      case TabType.yo:
        return "Yo";
      case TabType.go:
        return "Go";
      case TabType.so:
        return "Lo";
    }
  }
}
