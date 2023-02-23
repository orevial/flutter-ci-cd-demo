import 'package:flutter/material.dart';

const MaterialColor kMaterialPrimarySwatch =
    MaterialColor(0xFFAF4B00, <int, Color>{
  50: Color(0xFFF9EAE6),
  100: Color(0xFFF9CFBA),
  200: Color(0xFFF6B18D),
  300: Color(0xFFF3945F),
  400: Color(0xFFF07F3A),
  500: Color(0xFFED6D0F),
  600: Color(0xFFE3660A),
  700: Color(0xFFD55F05),
  800: Color(0xFFC85803),
  900: Color(0xFFAF4B00),
});

// Useless method but we need at least one method
// to be called for coverage report to be generated...
MaterialColor getMaterialPrimarySwatch() {
  return kMaterialPrimarySwatch;
}
