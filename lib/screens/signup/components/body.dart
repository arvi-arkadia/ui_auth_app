import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_auth_app/components/already_have_account.dart';
import 'package:ui_auth_app/components/rounded_button.dart';
import 'package:ui_auth_app/components/rounded_input_field.dart';
import 'package:ui_auth_app/components/rounded_password_field.dart';
import 'package:ui_auth_app/constants.dart';
import 'package:ui_auth_app/screens/login/login_screen.dart';
import 'package:ui_auth_app/screens/signup/components/or_divider.dart';
import 'package:ui_auth_app/screens/signup/components/social_icon.dart';

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
            SizedBox(height: size.height * 0.03),
            SafeArea(
              child: Text(
                "SIGN UP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // image
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * .4,
            ),
            // form field
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            // Button
            RoundedButton(
              text: "SIGN UP",
              press: () {},
            ),
            // Footer
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  srcSvg: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  srcSvg: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
                SocialIcon(
                  srcSvg: 'assets/icons/twitter.svg',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
