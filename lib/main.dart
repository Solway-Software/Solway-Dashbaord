import 'package:solway_dashboard/Utilities/themeOf.dart';
import 'package:solway_dashboard/constants.dart';
import 'package:solway_dashboard/controllers/MenuController.dart';
import 'package:solway_dashboard/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'helpers/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solway Dashboard',
      theme: AppThemePallete.darkTheme,
      // theme: AppThemePallete.lightTheme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}
