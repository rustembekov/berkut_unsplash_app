import 'package:flutter/material.dart';

class AppDimensions {
  // Spacing
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXL = 32.0;
  static const double spacingXXL = 48.0;

  // Padding
  static const EdgeInsets paddingAll = EdgeInsets.all(spacingL);
  static const EdgeInsets paddingHorizontal = EdgeInsets.symmetric(horizontal: spacingL);
  static const EdgeInsets paddingVertical = EdgeInsets.symmetric(vertical: spacingL);
  static const EdgeInsets paddingTop = EdgeInsets.only(top: spacingL);
  static const EdgeInsets paddingBottom = EdgeInsets.only(bottom: spacingL);
  static const EdgeInsets paddingLeft = EdgeInsets.only(left: spacingL);
  static const EdgeInsets paddingRight = EdgeInsets.only(right: spacingL);

  // Margins
  static const EdgeInsets marginAll = EdgeInsets.all(spacingL);
  static const EdgeInsets marginHorizontal = EdgeInsets.symmetric(horizontal: spacingL);
  static const EdgeInsets marginVertical = EdgeInsets.symmetric(vertical: spacingL);

  // Border radius
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXL = 24.0;

  // Icon sizes
  static const double iconSizeS = 16.0;
  static const double iconSizeM = 24.0;
  static const double iconSizeL = 32.0;
  static const double iconSizeXL = 48.0;

  // Button heights
  static const double buttonHeightS = 36.0;
  static const double buttonHeightM = 48.0;
  static const double buttonHeightL = 56.0;

  // Search bar
  static const double searchBarHeight = 48.0;
  static const double searchBarRadius = radiusM;

  // Image dimensions
  static const double imageAspectRatio = 16 / 9;
  static const double imageHeight = 200.0;
} 