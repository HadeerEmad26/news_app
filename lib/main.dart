import 'package:flutter/material.dart';
import 'package:news_app/models/my_provider.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/settings.dart';
import 'package:news_app/screens/splach_screen.dart';
import 'package:news_app/shared/styles/theming/my_them.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SettingsScreen.routeName: (context) => SettingsScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}

//type of api >> get post update delete
// shape of request
// shape of response
