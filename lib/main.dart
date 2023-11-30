import 'package:flutter/material.dart';
import 'package:bmi/screens/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor:const Color(0xff0A0E21),
        appBarTheme: const AppBarTheme(
          color:Color(0xff1A1F38),
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomePage(),
    );
  }
}

