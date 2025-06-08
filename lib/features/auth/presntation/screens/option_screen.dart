import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate/core/resources/manager_colors.dart';
import 'package:real_estate/core/resources/manager_font_sizes.dart';
import 'package:real_estate/core/resources/manager_font_weight.dart';
import 'package:real_estate/core/widgets/base_button.dart';
import 'package:real_estate/features/auth/presntation/bloc/auth_bloc.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../routes/routes.gr.dart';

@RoutePage()
class OptionScreen extends StatelessWidget {
  OptionScreen({super.key});

  final List<String> _images = [
    ManagerAssets.option1,
    ManagerAssets.option2,
    ManagerAssets.option3,
    ManagerAssets.option4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            // Navigator.pushNamed(context, '/home');
          } else if (state is AuthError) {
            // Handle authentication error
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return Center(child: CircularProgressIndicator(),);
          }

          return Column(
            children: [
              SizedBox(
                height: 430,
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(
                    vertical: ManagerHeight.h20,
                    horizontal: ManagerWidth.w10,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: _images.length,
                  itemBuilder: (context, index) {
                    return Image.asset(_images[index], fit: BoxFit.cover);
                  },
                ),
              ),
              SizedBox(height: ManagerHeight.h52),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                child: Row(
                  children: [
                    Text(
                      'Ready to',
                      style: TextStyle(
                        fontSize: ManagerFontSizes.s24,
                        fontWeight: ManagerFontWeight.w400,
                        color: ManagerColors.secondaryColor,
                      ),
                    ),
                    Text(
                      ' explore?',
                      style: TextStyle(
                        fontSize: ManagerFontSizes.s24,
                        fontWeight: ManagerFontWeight.w800,
                        color: ManagerColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: ManagerHeight.h50),
              BaseButton(
                width: 278,
                height: 63,
                onTap: () {
                  context.pushRoute(LoginRoute());
                }
                ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email_outlined, color: Colors.white),
                    SizedBox(width: ManagerWidth.w10),
                    Text(
                      "Continue with Email",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: ManagerHeight.h40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                        endIndent: 10,
                      ),
                    ),
                    const Text(
                      'OR',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                          thickness: 1, color: Colors.grey, indent: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(height: ManagerHeight.h20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // Handle Google sign-in
                        context.read<AuthBloc>().add(
                            AuthGoogleSignInRequested());
                      },
                      child: Container(
                        height: ManagerHeight.h70,
                        width: ManagerWidth.w155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ManagerColors.optionBoxColor,
                        ),
                        child: Image.asset(
                          ManagerAssets.google,
                          height: ManagerHeight.h24,
                          width: ManagerWidth.w24,
                        ),
                      ),
                    ),
                    SizedBox(width: ManagerWidth.w10),
                    Container(
                      height: ManagerHeight.h70,
                      width: ManagerWidth.w155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ManagerColors.optionBoxColor,
                      ),
                      child: Image.asset(
                        ManagerAssets.facebook,
                        height: ManagerHeight.h24,
                        width: ManagerWidth.w24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: ManagerHeight.h35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      fontWeight: ManagerFontWeight.w400,
                      color: ManagerColors.secondaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      context.pushRoute(LoginRoute());
                    },
                    child: Text(
                      ' Register',
                      style: TextStyle(
                        fontSize: ManagerFontSizes.s16,
                        fontWeight: ManagerFontWeight.w800,
                        color: ManagerColors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
