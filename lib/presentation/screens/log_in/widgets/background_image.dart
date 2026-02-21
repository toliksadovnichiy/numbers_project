import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Theme.of(context).brightness == Brightness.dark
          ? 'images/background_dark.svg'
          : 'images/background_light.svg',
      alignment: Alignment.center,
      fit: BoxFit.cover,
    );
  }
}
