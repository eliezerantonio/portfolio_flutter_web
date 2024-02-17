import 'package:flutter/material.dart';
import 'package:portfolio/ui/shared/sidebar.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Text("Outras paginas"),
          Sidebar(),
        ],
      ),
    );
  }
}
