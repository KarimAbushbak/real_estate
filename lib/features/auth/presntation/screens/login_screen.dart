import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate/core/resources/manager_assets.dart';
import 'package:real_estate/core/resources/manager_colors.dart';
import 'package:real_estate/core/resources/manager_font_sizes.dart';
import 'package:real_estate/core/resources/manager_font_weight.dart';
import 'package:real_estate/core/resources/manager_height.dart';
import 'package:real_estate/core/resources/manager_width.dart';

import '../bloc/auth_bloc.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(ManagerAssets.login1, width: 500, fit: BoxFit.cover),
          SizedBox(height: ManagerHeight.h10,),
          Padding(padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Let’s',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: ManagerFontWeight.regular,
                        color: ManagerColors.secondaryColor,
                      ),
                    ),
                    Text(
                      ' Sign In',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: ManagerFontWeight.bold,
                        color: ManagerColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ManagerHeight.h20,),
                Text(
                  'quis nostrud exercitation ullamco laboris nisi ut',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: ManagerFontSizes.s12
                  ),
                ),
                SizedBox(height: ManagerHeight.h35,),
                SizedBox(
                  height: ManagerHeight.h70,
                  width: ManagerWidth.w355,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: const Color(0xffF5F4F8), // Light background color
                      prefixIcon: Icon(Icons.email_outlined, color: ManagerColors.secondaryColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h70,
                  width: ManagerWidth.w355,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: const Color(0xffF5F4F8), // Light background color
                      prefixIcon: Icon(Icons.visibility, color: ManagerColors.secondaryColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                Row(
                  children: [
                     Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: ManagerColors.secondaryColor,
                        fontSize: ManagerFontSizes.s12,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                      },
                      child:  Text(
                        'show password',
                        style: TextStyle(
                          color: ManagerColors.secondaryColor,
                          fontSize: ManagerFontSizes.s12,
                        ),
                      ),
                    ),
                  ],
                ),





              ],
            ),

          ),
          SizedBox(height: ManagerHeight.h100,),
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
      ),
    );
  }
}
