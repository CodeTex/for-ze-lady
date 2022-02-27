import 'package:for_ze_lady/theme.dart';

class Destination {
  Destination(this.name, this.arenaBackground, this.portalBackground, this.theme);

  String name;
  String arenaBackground;
  String portalBackground;
  ColorPattern theme;

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "arenaBackground": arenaBackground,
      "portalBackground": portalBackground,
      "theme": theme,
    };
  }
}
