import 'package:app_figurinhas_copa22/pages/home/home_page.dart';
import 'package:app_figurinhas_copa22/pages/login/login_page.dart';
import 'package:app_figurinhas_copa22/splash/splash_page.dart';
import 'package:app_figurinhas_copa22/theme/theme_conf.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class albumApp extends StatelessWidget {
  const albumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa Word',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (_) => Splash_page(),
        '/auth/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
