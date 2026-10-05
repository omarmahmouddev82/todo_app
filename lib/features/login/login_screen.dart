import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/features/home/home_screen.dart';
import 'package:todo_app/features/login/widgets/buttom.dart';
import 'package:todo_app/features/login/widgets/custom_text_field.dart';
import 'package:todo_app/features/login/widgets/language.dart';
import 'package:todo_app/features/login/widgets/profile_icon.dart';
import 'package:todo_app/gen/locale_keys.g.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F7FB),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Language(),
                    120.verticalSpace,
                    ProfileIcon(),
                    20.verticalSpace,
                    Center(
                      child: Text(
                        LocaleKeys.create_profile.tr(),

                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    5.verticalSpace,
                    Center(
                      child: Text(
                        LocaleKeys.add_name_picture.tr(),

                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9d9d9f),
                        ),
                      ),
                    ),
                    25.verticalSpace,
                    Text(
                      LocaleKeys.full_name.tr(),

                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    12.verticalSpace,
                    CustomTextField(),
                    20.verticalSpace,
                    Button(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}