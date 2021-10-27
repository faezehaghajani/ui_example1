import 'package:flutter/material.dart';
import 'package:flutter_app_ui/colors.dart';
import 'package:flutter_app_ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise App',
      theme: ThemeData(
        primaryColor: PrimaryColor,
        scaffoldBackgroundColor: BackgrundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: TextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(

      ),
    );
  }
}
