import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/core/utils/text.dart';
import 'package:vba_crypto_signal/widgets/assets.dart';
import 'package:vba_crypto_signal/widgets/generic_button.dart';
import 'package:vba_crypto_signal/widgets/generic_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GenericColors.scaffoldBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios),
                GenericText.montheading1("Log In"),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 27,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: GenericColors.scaffoldSecondary,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  // GenericTextField(controller: ,title: "Email Address",),
                  // GenericTextField(controller: , title: "Password",isPassword: true,),
                  const SizedBox(
                    height: 32,
                  ),
                  GenericButton(text: "Log in")
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: (MediaQuery.sizeOf(context).width * 28) / 100,
                  color: GenericColors.scaffoldSecondary,
                ),
                const SizedBox(
                  width: 20,
                ),
                GenericText.montheading2(
                  "OR",
                  color: GenericColors.scaffoldSecondary,
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 1,
                  width: (MediaQuery.sizeOf(context).width * 28) / 100,
                  color: GenericColors.scaffoldSecondary,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SvgPicture.asset(SvgAssets.google),
                const SizedBox(
                  width: 30,
                ),
                SvgPicture.asset(SvgAssets.apple)
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                GenericText.nunito1(
                  "Dont have an account?",
                  color: GenericColors.grey,
                ),
                GenericText.nunito1(
                  "Sign up",
                  color: GenericColors.gold,
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}