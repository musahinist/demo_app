import 'package:flutter/material.dart';

extension HexColor on String {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  Color toColor() {
    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');
    buffer.write(replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

extension ContrastTextColor on Color {
  Color getContrastTextColor([double darknessThreshold = 128]) {
    return _isDarkFromGrayScale(this, darknessThreshold)
        ? Colors.black
        : Colors.white;
  }

  bool _isDarkFromGrayScale(Color color, [double darknessThreshold = 186]) {
    int red = color.red;
    int green = color.green;
    int blue = color.blue;
    // int alpha = color.alpha;
    int gray = (299 * red + 587 * green + 114 * blue) ~/ 1000;
    return gray > darknessThreshold;
  }
}
