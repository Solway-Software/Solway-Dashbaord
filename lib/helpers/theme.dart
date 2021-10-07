import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData colorTheme(BuildContext context) => Theme.of(context);
TextTheme textTheme(BuildContext context) => Theme.of(context).textTheme;

class AppThemePallete {
  static const primaryColor =  Color(0xFFeac50f);
  static const primaryDarkColor =  Color(0xFFeac50f);
  static const accentColor = const Color(0xFF95b6db);
  static const accentDarkColor = const Color(0xFF2A2D3E);
  static const bgColor = const Color(0xFFe6e9ed);
  static const bgDarkColor = const Color(0xFF212332);

  static const black = const Color(0xFF202020);
  static const grey700 = const Color(0xFF616161);
  static const white = Colors.white;
  static const white2 = const Color(0xffe0e0e0);

  //light theme of the application
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xffe0e0e0),
    accentColor: accentColor,
    primaryColor: primaryColor,
    backgroundColor: bgColor,
    textTheme: lightTextTheme,
    indicatorColor: primaryColor,
    // fontFamily: GoogleFonts.montserrat().fontFamily,
    primarySwatch: Colors.orange,
    cardColor: black,
    splashColor: accentColor.withOpacity(0.5),
    // tabBarTheme: TabBarTheme(
    //   labelColor: primaryColor,
    //   unselectedLabelColor: grey700,
    //   labelStyle: AppTheme._bodyText1,
    //   unselectedLabelStyle: AppTheme._bodyText1,
    //   indicatorSize: TabBarIndicatorSize.label,
    // ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: grey700),
      color: white2,
      textTheme: TextTheme(
          headline6: _headline6.copyWith(
        color: black,
        fontFamily: 'nrt',
      )),
      elevation: 0.3,
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
    fontFamily: 'Montserrat',
    accentColorBrightness: Brightness.dark,
    indicatorColor: primaryDarkColor,
    appBarTheme: AppBarTheme(
      elevation: 1,
      iconTheme: IconThemeData(color: Colors.white),
      color: Colors.white10,
      textTheme: TextTheme(
        headline6: _headline6.copyWith(color: Colors.white),
      ),
    ),
  );

  // Dark Text theme of the application
  static final TextTheme darkTextTheme = TextTheme(
    headline1: _headline1.copyWith(color: Colors.white),
    headline2: _headline2.copyWith(color: Colors.white),
    headline3: _headline3.copyWith(color: Colors.white),
    headline4: _headline4.copyWith(color: Colors.white),
    headline5: _headline5.copyWith(color: Colors.white),
    headline6: _headline6.copyWith(color: Colors.white),
    subtitle1: _subtitle1.copyWith(color: Colors.white),
    subtitle2: _subtitle2.copyWith(color: Colors.white),
    bodyText1: _bodyText1.copyWith(color: Colors.white),
    bodyText2: _bodyText2.copyWith(color: Colors.white),
    button: _button.copyWith(color: Colors.white),
    caption: _caption.copyWith(color: Colors.white),
    // overline: _overline.copyWith(color: Colors.white),
  );

  // //Light theme of the application

  static final TextTheme lightTextTheme = TextTheme(
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
    fontWeight: FontWeight.w300,
    fontFamily: 'nrt',
    fontSize: 60,
  );
  static final TextStyle _headline2 = TextStyle(
    color: black,
    fontWeight: FontWeight.w400,
    fontFamily: 'nrt',
    fontSize: 48,
  );
  static final TextStyle _headline3 = TextStyle(
    color: black,
    fontWeight: FontWeight.w400,
    fontFamily: 'nrt',
    fontSize: 34,
  );
  static final TextStyle _headline4 = TextStyle(
    color: black,
    fontWeight: FontWeight.w400,
    fontFamily: 'nrt',
    fontSize: 28,
  );
  static final TextStyle _headline5 = TextStyle(
    color: black,
    fontWeight: FontWeight.w400,
    fontFamily: 'nrt',
    fontSize: 24,
  );
  static final TextStyle _headline6 = TextStyle(
    color: black,
    fontWeight: FontWeight.w500,
    fontFamily: 'nrt',
    fontSize: 20,
  );

  static final TextStyle _subtitle1 = TextStyle(
    color: black,
    fontWeight: FontWeight.normal,
    fontFamily: 'nrt',
    fontSize: 16,
  );
  static final TextStyle _subtitle2 = TextStyle(
    color: black,
    fontWeight: FontWeight.normal,
    fontFamily: 'nrt',
    fontSize: 14,
  );

  static final TextStyle _bodyText1 = TextStyle(
    color: black,
    fontWeight: FontWeight.bold,
    fontFamily: 'nrt',
    fontSize: 16,
  );

  static final TextStyle _bodyText2 = TextStyle(
    color: black,
    fontWeight: FontWeight.bold,
    fontFamily: 'nrt',
    fontSize: 14,
  );
  static final TextStyle _button = TextStyle(
    color: black,
    fontWeight: FontWeight.bold,
    fontFamily: 'nrt',
    fontSize: 12,
  );
  static final TextStyle _caption = TextStyle(
    color: black,
    fontWeight: FontWeight.w400,
    fontFamily: 'nrt',
    fontSize: 10,
  );
  static final TextStyle _overLine = TextStyle(
    color: black,
    fontWeight: FontWeight.w400,
    fontFamily: 'nrt',
    fontSize: 8,
  );
}