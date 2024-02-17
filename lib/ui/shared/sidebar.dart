import 'package:flutter/material.dart';
import './components/components.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final primaryColor = Theme.of(context).primaryColor;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1),
      width: (size.width >= 700) ? size.width : 200,
      height: (size.width < 700) ? size.height : 60,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 10),
        ],
      ),
      child: Flex(
        direction: (size.width >= 700) ? Axis.horizontal : Axis.vertical,
        children: [
          const Text("EA"),
          if (size.width >= 700) const Spacer(),
          const MenuItemSidebar(text: 'Home', icon: Icons.home, isActive: true),
          const MenuItemSidebar(text: 'Projects', icon: Icons.build),
          const MenuItemSidebar(text: 'Contact', icon: Icons.contact_mail),
        ],
      ),
    );
  }
}
