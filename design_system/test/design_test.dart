import 'package:design_system/design/colors.design.dart';
import 'package:design_system/design/spacings.design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Colors are fine', () {
    expect(
      getMaterialPrimarySwatch().shade900,
      Color(0xFFAF4B00),
    );
  });

  test('Theme spacings are fine', () {
    expect(ThemeSpacing.l, 40.0);
  });
}
