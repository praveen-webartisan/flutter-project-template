import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

const APP_NAME = 'Flutter Template Project';
const APP_SHORT_NAME = 'FlutterTP';

class CustomTheme {

  static Color primaryColor = const Color(0xff8E2DE2);
  static Color onPrimaryColor = const Color(0xffffffff);
  static Color primary2Color = const Color(0xff4A00E0);

  static ButtonThemeData get buttonTheme {
    return ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      buttonColor: Color(0xff8E2DE2),
    );
  }

  static LinearGradient get gradient {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[
        primaryColor,
        primary2Color,
      ],
    );
  }

  static Color get onGradient {
    return Color(0xffffffff);
  }

  static dynamic get light {
    return {
      'data': ThemeData(
        primaryColor: primaryColor,
        textTheme: ThemeData.light().textTheme,
        scaffoldBackgroundColor: Color(0xffd3d3d3),
        buttonTheme: buttonTheme,
        drawerTheme: DrawerThemeData(
          backgroundColor: Color(0xffffffff),
        ),
        listTileTheme: ListTileThemeData(
          selectedColor: primaryColor,
        ),
      ),
      'gradient': gradient,
    };
  }

  static dynamic get dark {
    return {
      'data': ThemeData(
        primaryColor: Color(0xff38393d),
        scaffoldBackgroundColor: Color(0xff333333),
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: buttonTheme,
        drawerTheme: DrawerThemeData(
          backgroundColor: Color(0xff38393d),
        ),
        listTileTheme: ListTileThemeData(
          selectedColor: primaryColor,
        ),
      ),
      'gradient': gradient,
    };
  }

}

