import 'package:flutter/material.dart';
import 'package:git_api/app/views/user_page.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const USER_PAGE = 'user_page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: HOME,
      routes: {
        HOME: (context) => HomePage(),
        USER_PAGE: (context) => UserPage(),
      },
    );
  }
}
