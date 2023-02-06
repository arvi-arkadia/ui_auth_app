import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_auth_app/components/already_have_account.dart';
import 'package:ui_auth_app/components/rounded_button.dart';
import 'package:ui_auth_app/components/rounded_input_field.dart';
import 'package:ui_auth_app/components/rounded_password_field.dart';
import 'package:ui_auth_app/components/text_field_container.dart';
import 'package:ui_auth_app/constants.dart';
import 'package:ui_auth_app/screens/signup/signup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // title
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // image
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.4,
            ),
            // form
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (String value) {},
            ),
            RoundedPasswordField(
              onChanged: (String value) {},
            ),
            // bottom
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            // footer
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
