import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solway_dashboard/helpers/size_helper.dart';

ThemeData colorTheme(BuildContext context) => Theme.of(context);
TextTheme textTheme(BuildContext context) => Theme.of(context).textTheme;

class AppThemePallete {
  static const primaryColor = Color(0xFFeac50f);
  static const primaryDarkColor = Color(0xFFeac50f);
  static const accentColor = Color(0xFF95b6db);
  static const accentDarkColor = Color(0xFF2A2D3E);
  static const bgColor = Color(0xFFe6e9ed);
  static const bgDarkColor = Color(0xFF212332);

  static const black = Color(0xFF202020);
  static const grey700 = Color(0xFF616161);
  static const white = Colors.white;
  static const white2 = Color(0xffe0e0e0);

  //light theme of the application
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffe0e0e0),
    accentColor: accentColor,
    primaryColor: primaryColor,
    backgroundColor: bgColor,
    textTheme: lightTextTheme,
    indicatorColor: primaryColor,
    // fontFamily: GoogleFonts.montserrat().fontFamily,
    primarySwatch: Colors.orange,
    cardColor: black,
    splashColor: accentColor.withOpacity(0.5),
    fontFamily: 'Titillium',
    // tabBarTheme: TabBarTheme(
    //   labelColor: primaryColor,
    //   unselectedLabelColor: grey700,
    //   labelStyle: AppTheme._bodyText1,
    //   unselectedLabelStyle: AppTheme._bodyText1,
    //   indicatorSize: TabBarIndicatorSize.label,
    // ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: grey700),
      color: white2,
      textTheme: TextTheme(
          headline6: _headline6.copyWith(
        color: black,
      )),
      elevation: 0.3,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: black,
      selectionHandleColor: Colors.grey,
      selectionColor: black,
    ),
  );

  // dark theme of the whole application
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff202020),
    shadowColor: Colors.black,
    brightness: Brightness.dark,
    accentColor: accentDarkColor,
    primaryColor: primaryDarkColor,
    backgroundColor: bgDarkColor,
    textTheme: darkTextTheme,
    fontFamily: 'Titillium',
    accentColorBrightness: Brightness.dark,
    indicatorColor: primaryDarkColor,
    appBarTheme: AppBarTheme(
      elevation: 1,
      iconTheme: const IconThemeData(color: Colors.white),
      color: Colors.white10,
      textTheme: TextTheme(
        headline6: _headline6.copyWith(color: Colors.white),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.white,
      selectionHandleColor: Colors.white24,
      selectionColor: Colors.white,
    ),
  );

  // Dark Text theme of the application
  static final TextTheme darkTextTheme = TextTheme(
    headline1: _headline1.copyWith(color: white),
    headline2: _headline2.copyWith(color: white),
    headline3: _headline3.copyWith(color: white),
    headline4: _headline4.copyWith(color: white),
    headline5: _headline5.copyWith(color: white),
    headline6: _headline6.copyWith(color: white),
    subtitle1: _subtitle1.copyWith(color: white),
    subtitle2: _subtitle2.copyWith(color: white),
    bodyText1: _bodyText1.copyWith(color: white),
    bodyText2: _bodyText2.copyWith(color: white),
    button: _button.copyWith(color: white),
    caption: _caption.copyWith(color: white),
    // overline: _overline.copyWith(color: Colors.white),
  );

  // //Light theme of the application

  static TextTheme lightTextTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    headline4: _headline4,
    headline5: _headline5,
    headline6: _headline6,
    subtitle1: _subtitle1,
    subtitle2: _subtitle2,
    bodyText1: _bodyText1,
    bodyText2: _bodyText2,
    button: _button,
    caption: _caption,
    overline: _overLine,
  );

  static final TextStyle _headline1 = TextStyle(
    color: black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Titillium',
    fontSize: 4 * SizeHelper.textMultiplier,
    letterSpacing: 1.5,
  );
  static final TextStyle _headline2 = TextStyle(
    color: black,
    fontWeight: FontWeight.w700,
    fontFamily: 'Titillium',
    fontSize: 3.7 * SizeHelper.textMultiplier,
  );
  static final TextStyle _headline3 = TextStyle(
    color: black,
    fontWeight: FontWeight.w600,
    fontFamily: 'Titillium',
    fontSize: 3.3 * SizeHelper.textMultiplier,
  );
  static final TextStyle _headline4 = TextStyle(
    color: black,
    fontWeight: FontWeight.w500,
    fontFamily: 'Titillium',
    fontSize: 2.9 * SizeHelper.textMultiplier,
  );
  static final TextStyle _headline5 = TextStyle(
    color: black,
    fontWeight: FontWeight.w400,
    fontFamily: 'Titillium',
    fontSize: 2.5 * SizeHelper.textMultiplier,
  );
  static final TextStyle _headline6 = TextStyle(
    color: black,
    fontWeight: FontWeight.w300,
    fontFamily: 'Titillium',
    fontSize: 2 * SizeHelper.textMultiplier,
  );

  static final TextStyle _subtitle1 = TextStyle(
    color: black,
    fontWeight: FontWeight.normal,
    fontFamily: 'Titillium',
    fontSize: 1.9 * SizeHelper.textMultiplier,
  );
  static final TextStyle _subtitle2 = TextStyle(
    color: black,
    fontWeight: FontWeight.w300,
    fontFamily: 'Titillium',
    fontSize: 1.6 * SizeHelper.textMultiplier,
  );

  static final TextStyle _bodyText1 = TextStyle(
    color: black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Titillium',
    fontSize: 2.3 * SizeHelper.textMultiplier,
  );

  static final TextStyle _bodyText2 = TextStyle(
    color: black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Titillium',
    fontSize: 2 * SizeHelper.textMultiplier,
  );
  static final TextStyle _button = TextStyle(
    color: black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Titillium',
    fontSize: 2.5 * SizeHelper.textMultiplier,
  );
  static final TextStyle _caption = TextStyle(
    color: black,
    fontWeight: FontWeight.w300,
    fontFamily: 'Titillium',
    fontSize: 1.4 * SizeHelper.textMultiplier,
  );
  static final TextStyle _overLine = TextStyle(
    color: black,
    fontWeight: FontWeight.w300,
    fontFamily: 'Titillium',
    fontSize: 1.4 * SizeHelper.textMultiplier,
  );
}
