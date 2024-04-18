import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:individual_meetup_app/core/theme/app_theme.dart';
import 'package:individual_meetup_app/feature_1/view/pages/home_page.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/other_login_method.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/text_field_widget.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 70),
                child: Text(
                  "promilo",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Hi, Welcome Back!",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 16, 2, 93)),
              ),
              const SizedBox(
                height: 40,
              ),

              /// Email Textfield

              TextFieldWidget(
                  upperText: "   Please Sign in to continue",
                  hintText: "Enter Email or Mob No. ",
                  lowerText: "Sign In With OTP   ",
                  controller: emailController),
              const SizedBox(
                height: 17,
              ),

              /// Password Textfield

              TextFieldWidget(
                  upperText: "   Password",
                  hintText: "Enter Password",
                  lowerText: "Forget Password   ",
                  controller: passwordController),

              /// Submit Button
              const SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Container(
                  height: MediaQuery.sizeOf(context).height / 14.50,
                  width: MediaQuery.sizeOf(context).width / 1.120,
                  decoration: BoxDecoration(
                      color: AppTheme.submitBtn,
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(width: 3, color: AppTheme.button)),
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children:  [
                  Expanded(
                      child: Divider(
                    color: AppTheme.submitBtn,
                  )),
                  Text("OR"),
                  Expanded(
                      child: Divider(
                    color: AppTheme.submitBtn,
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const OtherLoginMethodWidget(),
              const SizedBox(
                height: 30,
              ),

              /// row 1
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Business User?",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.grey),
                  ),
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.grey),
                  )
                ],
              ),
              const SizedBox(height: 7),

              /// row 2
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Login Here",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.button),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.button),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: const TextSpan(
                  text: "            By continuing, you agree to\nPromilo's",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.submitBtn),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Terms of Use & Privacy Policy.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: AppTheme.text)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
