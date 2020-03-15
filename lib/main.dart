import 'package:flutter/material.dart';

import './screens/home_screen.dart';
import './screens/login_screen.dart';
import './screens/productPage_screen.dart';
import './widgets/search.dart';

void main() => runApp(MyApp());

// https://goo.gl/CP92wY  androidX migration
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Misoua',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,

      routes:  {
        ProductPageScreen.routeName: (context) => ProductPageScreen(),
        AdvanceSearchScreen.routeName: (context) => AdvanceSearchScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}


