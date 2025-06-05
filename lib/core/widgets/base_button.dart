import 'package:flutter/material.dart';

import '../resources/manager_colors.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_height.dart';
import '../resources/manager_width.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    this.width,
    this.height,
    this.text,
    this.onTap,
  });

  final double? width;
  final double? height;
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        width: width ?? ManagerWidth.w190,
        height: height ?? ManagerHeight.h52,
        decoration: BoxDecoration(
          color: ManagerColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text ?? 'Lets Start',
            style: TextStyle(
              color: Colors.white,
              fontSize: ManagerFontSizes.s18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
