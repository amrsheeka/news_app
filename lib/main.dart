import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/newsApp/dioHelper/dio.dart';
import 'package:news_app/newsApp/navigationScreen.dart';

import 'newsApp/shared/constants.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        //     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        //       selectedItemColor: Colors.deepPurple,
        //     ),

        buttonTheme: ButtonThemeData(
          buttonColor: mainColor,

        ),
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            //color: Colors.white,
            elevation: 0.0,
            systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.white)),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: mainColor, secondary: mainColor),
        //     textTheme: const TextTheme(
        //       bodyText1: TextStyle(
        //           fontSize: 18,
        //           color: Colors.black
        //       ),
        //     )
      ),
      darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.deepPurple,
              backgroundColor: Colors.black12,
              unselectedItemColor: Colors.white
          ),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
              color: Colors.black,
              elevation: 0.0,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.black54
              )
          ),
          bottomAppBarColor: Colors.black12,
          cardColor: Colors.black12,
          cardTheme: CardTheme(
              color: Colors.black12
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
                fontSize: 18,
                color: Colors.white
            ),
          )
      ),
      themeMode: ThemeMode.system,
      home: const NavigationScreen(),
    );
  }
}

