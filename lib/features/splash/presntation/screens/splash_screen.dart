import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/resources/manager_colors.dart';
import 'package:real_estate/core/resources/manager_height.dart';
import 'package:real_estate/core/resources/manager_width.dart';
import 'package:real_estate/routes/routes.gr.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/widgets/base_button.dart';
@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ManagerAssets.splash1),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF1F4C6B), // Opaque blue
                  Color(0x001F4C6B), // Transparent blue
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ManagerWidth.w200,
                  child: Image.asset(
                    ManagerAssets.logo,
                  ),
                ),
                const Text(
                  'Rise',
                  style: TextStyle(
                    fontSize: ManagerFontSizes.s36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Real Estate',
                  style: TextStyle(
                    fontSize: ManagerFontSizes.s36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: ManagerHeight.h190,),
                BaseButton(
                  onTap: (){
                    context.pushRoute( OnBoardingRoute());


                  },
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}

