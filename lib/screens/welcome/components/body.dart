import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_auth_app/components/rounded_button.dart';
import 'package:ui_auth_app/constants.dart';
import 'package:ui_auth_app/screens/login/login_screen.dart';
import 'package:ui_auth_app/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // title
            Text(
              "Welcome To EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // image
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            // button
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: 'SIGN UP',
              textColor: kPrimaryColor,
              color: kPrimaryLightColor,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
