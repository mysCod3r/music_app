import 'package:flutter/material.dart';
import 'package:music_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData.dark().copyWith(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black.withOpacity(0.1),
            showUnselectedLabels: true,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.white),
        colorScheme: const ColorScheme.dark(

            //If theme brightness is light, use primary color.
            //If theme brightness is dark, use surface color.
            brightness: Brightness.dark,
            surface: Colors.black54),
        primaryTextTheme: const TextTheme(bodyText1: TextStyle(fontSize: 18)),
      ),
      home: const Home(),
    );
  }
}
