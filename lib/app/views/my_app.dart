import 'package:flutter/material.dart';
import 'package:git_api/app/views/erro_page.dart';
import 'package:git_api/app/views/user_page.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const USER_PAGE = 'user_page';
  static const ERRO_PAGE = 'erro_page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: HOME,
      routes: {
        HOME: (context) => HomePage(),
        USER_PAGE: (context) => UserPage(),
        ERRO_PAGE: (context) => ErroPage()
      },
    );
  }
}