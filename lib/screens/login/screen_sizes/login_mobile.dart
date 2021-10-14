import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solway_dashboard/constants.dart';
import 'package:solway_dashboard/helpers/size_helper.dart';
import 'package:solway_dashboard/screens/login/widgets/solway_password_field.dart';
import 'package:solway_dashboard/screens/login/widgets/solway_text_field.dart';
import 'package:solway_dashboard/utilities/theme_of.dart';

class LoginMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme(context).backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeHelper.screenWidth / 15,
                  vertical: SizeHelper.screenHeight / 20),
              child: Image.asset(Constants.loginIllustration),
            )),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        'sign in'.toUpperCase(),
                        style: theme(context).textTheme.headline2,
                      ),
                      Text(
                        'Please enter your phone number and password',
                        style: theme(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const SolwayTextField(
                  icon: Constants.phoneIcon,
                  hint: 'Phone number',
                  inputAction: TextInputAction.done,
                ),
                const SolwayPasswordField(
                  icon: Constants.lockIcon,
                  hint: 'Password',
                  inputAction: TextInputAction.done,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                  child: Text(
                    'Forgot Password',
                    style: theme(context).textTheme.bodyText2,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                // RoundedButton(
                //   buttonName: 'Login',
                // ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'help'),
            child: Column(
              children: [
                Text(
                  'Have you any issue?  ',
                  style: theme(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(letterSpacing: 1.3),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Constants.desktopIcon),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Contact Us',
                      style: theme(context).textTheme.bodyText2?.copyWith(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
        ],
      ),
    );
  }
}
