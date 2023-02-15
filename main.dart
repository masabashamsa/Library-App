
import 'package:flutter/material.dart';
import 'package:library_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    const appName = 'E-Lib';

    return MaterialApp(
      title: appName,
      theme: ThemeData(

        brightness: Brightness.dark,
        primaryColor: Colors.orangeAccent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      debugShowCheckedModeBanner: false,

      home: HomeScreen(
      ),
      routes: {
        "/homeScreen":(_)=> HomeScreen()
      },

    );
  }
}
