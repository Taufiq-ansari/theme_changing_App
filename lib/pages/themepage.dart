import 'package:flutter/material.dart';
import 'package:light_dark_mode/pages/mybox.dart';
import 'package:light_dark_mode/pages/mybutton.dart';
import 'package:light_dark_mode/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeColorScreen extends StatelessWidget {
  const ThemeColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              print("tapped");
            },
          ),
        ),
      ),
    );
  }
}
