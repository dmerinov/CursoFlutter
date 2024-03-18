import 'package:flutter/material.dart';
import 'package:widgets_app/lib/config/router/go_router.dart';
import 'package:widgets_app/lib/config/theme/app_theme.dart';
import 'package:widgets_app/lib/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/lib/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/lib/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      title: 'Material App',
    );
  }
}
