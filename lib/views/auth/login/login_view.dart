import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vba_crypto_signal/bloc/login_bloc.dart';
import 'package:vba_crypto_signal/core/constants/routing_constants.dart';
import 'package:vba_crypto_signal/core/services/navigation_service.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/core/utils/text.dart';
import 'package:vba_crypto_signal/core/utils/validators.dart';
import 'package:vba_crypto_signal/widgets/assets.dart';
import 'package:vba_crypto_signal/widgets/gap.dart';
import 'package:vba_crypto_signal/widgets/generic_button.dart';
import 'package:vba_crypto_signal/widgets/generic_flush_bar.dart';
import 'package:vba_crypto_signal/widgets/generic_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vba_crypto_signal/widgets/loader.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GenericColors.scaffoldBackgroundColor,
      body: SafeArea(
          child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginError) {
            GenericFlushBar.displayerror(failure: state.failure);
          } else if (state is LoginSuccessful) {
            NavigationService.instance.navigateTo(NavigatorRoutes.home);
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Loader(
              busy: state is LoginLoading,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Form(
                  key: formKey,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
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
                            GenericTextField(
                              controller: emailController,
                              hint: "you@example.com",
                              title: "Email Address",
                              validator: Validator.email,
                            ),
                            Gap.s24,
                            GenericTextField(
                              controller: passwordController,
                              title: "Password",
                              hint: "Not less than 8 characters",
                              isPassword: true,
                              validator: Validator.password,
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            GenericButton(
                              text: "Log in",
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  BlocProvider.of<LoginBloc>(context).add(
                                    Login(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    ),
                                  );
                                }
                              },
                            )
                          ],
                        ),
                      ),
                      Gap.s24,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width:
                                (MediaQuery.sizeOf(context).width * 28) / 100,
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
                            width:
                                (MediaQuery.sizeOf(context).width * 28) / 100,
                            color: GenericColors.scaffoldSecondary,
                          ),
                        ],
                      ),
                      Gap.s8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(SvgAssets.google),
                          const SizedBox(
                            width: 30,
                          ),
                          SvgPicture.asset(SvgAssets.apple)
                        ],
                      ),
                      Gap.s12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GenericText.nunito1(
                            "Dont have an account?",
                            color: GenericColors.grey,
                          ),
                          Gap.s2,
                          GenericText.nunito1(
                            "Sign up",
                            color: GenericColors.gold,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}
