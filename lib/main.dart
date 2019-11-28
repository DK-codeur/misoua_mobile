import 'package:flutter/material.dart';
import 'package:misoua/detail_page.dart';
import 'package:misoua/home.dart';
import 'package:misoua/login..dart';
import 'package:misoua/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Misoua',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,

      routes:  {
        DetailPage.routeName: (context) => DetailPage(),
        FormPage.routeName: (context) => FormPage(),
        LoginPage.routeName: (context) => LoginPage(),
        MyHomePage.routeName: (context) => MyHomePage(),
      },
    );
  }
}


