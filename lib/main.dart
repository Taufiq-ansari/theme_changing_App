import 'package:flutter/material.dart';
import 'package:light_dark_mode/pages/themepage.dart';
import 'package:light_dark_mode/provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyThemeApp(),
    ),
  );
}

class MyThemeApp extends StatelessWidget {
  const MyThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: ThemeColorScreen(),
    );
  }
}
