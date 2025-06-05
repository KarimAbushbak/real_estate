import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.imagePath,
    required this.text1,
    required this.text2,
    required this.text3,
    this.onNext,
  });

  final String imagePath;
  final String text1;
  final String text2;
  final String text3;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w10, vertical: ManagerHeight.h10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: ManagerFontSizes.s24,
              fontWeight: ManagerFontWeight.regular,
              color: Colors.black87,
            ),
          ),
          Row(
            children: [
              Text(
                text2,
                style: TextStyle(
                  fontSize: ManagerFontSizes.s24,
                  fontWeight: ManagerFontWeight.regular,
                  color: Colors.black87,
                ),
              ),
              Text(
                text3,
                style: TextStyle(
                  fontSize: ManagerFontSizes.s24,
                  fontWeight: ManagerFontWeight.w800,
                  color: ManagerColors.secondaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h20),
          Text(
            'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed.',
            style: TextStyle(
              fontSize: ManagerFontSizes.s12,
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(height: ManagerHeight.h38),
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: BaseButton(
                      text: 'Next',
                      onTap: onNext,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<Widget> onboardingPages = [
  OnBoardingWidget(
    imagePath: ManagerAssets.outBoarding2,
    text1: 'Find best place ',
    text2: 'to stay in',
    text3: ' good price',
  ),
  OnBoardingWidget(
    imagePath: ManagerAssets.outBoarding3,
    text1: 'Fast sell your property ',
    text2: 'in just',
    text3: ' one click ',
  ),
  OnBoardingWidget(
    imagePath: ManagerAssets.outBoarding4,
    text1: 'Find perfect choice for  ',
    text2: 'your',
    text3: ' future house ',
  ),

  ];
