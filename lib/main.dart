import 'package:flutter/material.dart';
import 'package:sales_erb/screens/home-screen/home_screen.dart';
import 'package:sales_erb/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: HomeScreen(),
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
      },
    );
  }
}