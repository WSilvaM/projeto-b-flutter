import 'package:flutter/widgets.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => Color(0XFF791435);
  Color get secondary => Color(0XFFFDCE50);
  Color get yeallow => Color(0XFFFDCE50);
  Color get grey => Color(0XFFCCCCCC);
  Color get greyDart => Color(0XFF999999);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
