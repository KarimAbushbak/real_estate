import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate/core/resources/manager_assets.dart';
import 'package:real_estate/core/resources/manager_height.dart';
import 'package:real_estate/core/resources/manager_width.dart';
import 'package:auto_route/auto_route.dart';

import '../../../../routes/routes.gr.dart';
import '../cubit/on_boarding_cubit.dart';
import '../widgets/on_boarding_widget.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

   OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          if (state is OnboardingPageChanged) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _pageController.animateToPage(
                state.index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            });
          } else if (state is OnboardingCompleted) {
            context.pushRoute( OptionRoute());
          }
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(ManagerHeight.h100),
              child: SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: ManagerWidth.w20,
                    vertical: ManagerHeight.h20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        ManagerAssets.outBoarding1,
                        height: ManagerHeight.h40,
                      ),
                      TextButton(
                        onPressed: () {
                          context.read<OnboardingCubit>().skipOnboarding(onboardingPages.length - 1);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'skip',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: PageView.builder(
              controller: _pageController,
              itemCount: onboardingPages.length,
              itemBuilder: (context, index) {
                return OnBoardingWidget(
                  imagePath: onboardingPages[index].imagePath,
                  text1: onboardingPages[index].text1,
                  text2: onboardingPages[index].text2,
                  text3: onboardingPages[index].text3,
                  onNext: () {
                    context.read<OnboardingCubit>().nextPage(index, onboardingPages.length);
                  },
                );
              },
              onPageChanged: (index) {
                context.read<OnboardingCubit>().updateIndex(index);
              },
            ),
          );
        },
      ),
    );
  }
}

final List<OnBoardingWidget> onboardingPages = [
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

