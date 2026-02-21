import 'package:flutter/material.dart';


  //heights
  const double h8 = 8;
  const double h16 = 16;
  const double h24 = 24;
  const double h48 = 48;

  //text
  const double tL = 22;
  const double tM = 16;
  const double tS = 14;

  const double bM = 14;
  const double bS = 12;

  const double tLogo = 56;

  //paddings
  const EdgeInsets p16 = EdgeInsets.all(16);
  const EdgeInsets p8 = EdgeInsets.all(8);
  const EdgeInsets p4 = EdgeInsets.all(4);

  const EdgeInsets pV48 = EdgeInsets.symmetric(vertical: 48);
  const EdgeInsets pV16 = EdgeInsets.symmetric(vertical: 16);
  const EdgeInsets pV8 = EdgeInsets.symmetric(vertical: 8);
  const EdgeInsets pV4 = EdgeInsets.symmetric(vertical: 4);

  const EdgeInsets pH16 = EdgeInsets.symmetric(horizontal: 16);
  const EdgeInsets pH8 = EdgeInsets.symmetric(horizontal: 8);
  const EdgeInsets pH4 = EdgeInsets.symmetric(horizontal: 4);

  //radius
  const BorderRadius r8 = BorderRadius.all(Radius.circular(8));
  const BorderRadius r16 = BorderRadius.all(Radius.circular(16));
  const BorderRadius r24 = BorderRadius.all(Radius.circular(24));

  // size helpers
  const double desktopDetectedWidth = 750;
  const double desktopMidWidth = 1300;

  double screenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;
  double screenHeight(BuildContext context) => MediaQuery.sizeOf(context).height;

  /// Returns the pixel amount for the percentage of the screen height. [percentage] should
  /// be between 0 and 1 where 0 is 0% and 1 is 100% of the screens height
  double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
      screenHeight(context) * percentage;

  /// Returns the pixel amount for the percentage of the screen width. [percentage] should
  /// be between 0 and 1 where 0 is 0% and 1 is 100% of the screens width
  double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
      screenWidth(context) * percentage;