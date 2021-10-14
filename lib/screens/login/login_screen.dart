import 'package:flutter/material.dart';
import 'package:solway_dashboard/screens/login/screen_sizes/login_desktop.dart';
import 'package:solway_dashboard/screens/login/screen_sizes/login_mobile.dart';

class LoginScreen extends StatelessWidget {
  static const String route = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final menuController = Provider.of<MenuController>(context, listen: true);
    return  Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth <= 1024) {
            return LoginMobile();
          } else {
            return LoginDesktop();
          }
        },
      ),
    );
  }
}