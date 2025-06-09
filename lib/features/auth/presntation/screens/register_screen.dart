import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/resources/manager_colors.dart';
import 'package:real_estate/core/resources/manager_font_sizes.dart';
import 'package:real_estate/core/resources/manager_width.dart';
import 'package:real_estate/core/widgets/base_button.dart';

import '../../../../core/resources/manager_height.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: ManagerHeight.h100),
              child: Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ManagerColors.secondaryColor,
                ),
              ),
            ),
            SizedBox(height: ManagerHeight.h20),
            Text(
              'quis nostrud exercitation ullamco laboris nisi ut',
              style: TextStyle(
                fontSize: ManagerFontSizes.s14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: ManagerHeight.h50),
            SizedBox(
              height: ManagerHeight.h70,
              width: ManagerWidth.w355,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                  filled: true,
                  fillColor: const Color(0xffF5F4F8),
                  // Light background color
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    color: ManagerColors.secondaryColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 16.0,
                  ),
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: ManagerHeight.h14),

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
            SizedBox(height: ManagerHeight.h14),

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
                  prefixIcon: Icon(Icons.lock_outline, color: ManagerColors.secondaryColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                ),
                obscureText: true,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: ManagerHeight.h50),
            Center(
              child: BaseButton(
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ManagerFontSizes.s20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}