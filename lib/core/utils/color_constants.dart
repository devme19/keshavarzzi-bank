import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color teal9007e = fromHex('#7e003832');

  static Color lime700 = fromHex('#d2a329');

  static Color lime800 = fromHex('#b99025');

  static Color gray900 = fromHex('#24242d');

  static Color lime70067 = fromHex('#67d2a329');

  static Color gray9006a = fromHex('#6a24242d');

  static Color lime70026 = fromHex('#26d2a329');

  static Color gray300 = fromHex('#dee2da');

  static Color teal9005e = fromHex('#5e003832');

  static Color gray100 = fromHex('#f2f5f5');

  static Color black900 = fromHex('#000000');

  static Color gray9004c = fromHex('#4c002824');

  static Color bluegray400 = fromHex('#888888');

  static Color teal900 = fromHex('#003832');

  static Color gray30090 = fromHex('#90dee2da');

  static Color teal90026 = fromHex('#26003832');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray90090 = fromHex('#9024242d');

  static Color teal90099 = fromHex('#99003832');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
