import 'package:flutter/material.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/text_field_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
            const Padding(
              padding: EdgeInsets.only(right: 120, bottom: 5),
              child: Text(
                "Please Sign in to continue",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 7, 62, 107)),
              ),
            ),
            TextFieldWidget(hintText: "Enter Email or Mob No."),
            Padding(
              padding: const EdgeInsets.only(
                left: 200,
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign In With OTP",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 23, 115, 190)),
                  )),
            ),

            /// Password Textfield
            const Padding(
              padding: EdgeInsets.only(right: 255, bottom: 5, top: 15),
              child: Text(
                "Password",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 7, 62, 107)),
              ),
            ),
            TextFieldWidget(hintText: "Enter Password"),
            Padding(
              padding: const EdgeInsets.only(
                left: 200,
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 23, 115, 190)),
                  )),
            ),

            /// Submit Button
            InkWell(
              onTap: () {},
              child: Container(
                height: MediaQuery.sizeOf(context).height / 14.50,
                width: MediaQuery.sizeOf(context).width / 1.120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 186, 197, 196),
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 23, 115, 190))),
                child: Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
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
