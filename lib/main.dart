import 'package:solway_dashboard/Utilities/theme_of.dart';
import 'package:solway_dashboard/constants.dart';
import 'package:solway_dashboard/controllers/menu_controller.dart';
import 'package:solway_dashboard/helpers/Language.dart';
import 'package:solway_dashboard/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:solway_dashboard/screens/main/main_screen.dart';
import 'package:solway_dashboard/screens/splash/splash_screen.dart';

import 'helpers/size_helper.dart';
import 'helpers/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
          ChangeNotifierProvider(
            create: (context) => Language(),
          ),
          // ChangeNotifierProvider.value(
          //   value: Auth(),
          // ),
          // ChangeNotifierProxyProvider<Auth, CountryProvider>(
          //   create: (context) => CountryProvider(),
          //   update: (context, auth, previousCountryProvider) => previousCountryProvider!..setUpdates(auth.getToken),
          // ),
        ],
        child: LayoutBuilder(builder: (context, constrainsts) {
          SizeHelper().init(constrainsts);
          return MaterialApp(
            builder: (context, child) {
              return Consumer<Language>(
                builder: (_, language, __) => Directionality(
                    textDirection: language.languageDirection == 'rtl'
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                    child: child!),
              );
            },
            debugShowCheckedModeBanner: false,
            title: 'Solway Dashboard',
            theme: AppThemePallete.darkTheme,
            // theme: AppThemePallete.lightTheme,
            // home: MainScreen(),
            initialRoute: '/main',
            routes: {
              // SplashScreen.route: (context) => const SplashScreen(),
              MainScreen.route: (context) => MainScreen(),
              // LanguageChange.route: (context) => LanguageChange(),
              LoginScreen.route: (context) => const LoginScreen(),
            },
          );
        }));
  }
}
