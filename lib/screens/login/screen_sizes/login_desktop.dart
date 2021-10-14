import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solway_dashboard/helpers/responsive.dart';
import 'package:solway_dashboard/helpers/size_helper.dart';
import 'package:solway_dashboard/screens/login/widgets/solway_password_field.dart';
import 'package:solway_dashboard/screens/login/widgets/solway_text_field.dart';
import 'package:solway_dashboard/utilities/theme_of.dart';

import '../../../constants.dart';

class LoginDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: theme(context).backgroundColor,
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
              horizontal: SizeHelper.screenWidth / 6,
              vertical: SizeHelper.screenHeight / 8),
          decoration: ShapeDecoration(
            color: theme(context).unselectedWidgetColor,
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 16,
                cornerSmoothing: 1,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    color: theme(context).colorScheme.secondary,
                    shape: const SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius.horizontal(
                          left: SmoothRadius(
                              cornerRadius: 16, cornerSmoothing: 1)),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SIGN IN'.toUpperCase(),
                        style: theme(context).textTheme.headline1,
                      ),
                      Text(
                        'Please enter your phone number and password',
                        style: theme(context).textTheme.subtitle1,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeHelper.screenWidth / 18,
                            vertical: SizeHelper.screenHeight / 25),
                        child: Image.asset(Constants.loginIllustration),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeHelper.screenWidth / 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor:
                                theme(context).colorScheme.secondary,
                            padding: EdgeInsets.symmetric(
                              horizontal: Constants.defaultPadding * 1.1,
                              vertical: Constants.defaultPadding /
                                  (Responsive.isMobile(context) ? 2.1 : 1),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Sign in",
                            style: theme(context).textTheme.bodyText1?.copyWith(
                              color: theme(context).unselectedWidgetColor),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, 'ForgotPassword'),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password',
                            style: theme(context).textTheme.subtitle2?.copyWith(
                                color: theme(context).backgroundColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeHelper.screenHeight / 20,
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
                                  ?.copyWith(letterSpacing: 1.3,color: theme(context).backgroundColor),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Constants.desktopIcon,color: theme(context).backgroundColor,),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Contact Us',
                                  style: theme(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                      color: theme(context).backgroundColor,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
