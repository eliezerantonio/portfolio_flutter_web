import 'package:flutter/material.dart';
import 'package:portfolio/ui/layout/main_layout.dart';

import 'config/configs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eliezer Antonio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const MainLayout(),
    );
  }
}
