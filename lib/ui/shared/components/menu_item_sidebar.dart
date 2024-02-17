import 'package:flutter/material.dart';

class MenuItemSidebar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isActive;

  const MenuItemSidebar({
    super.key,
    required this.text,
    required this.icon,
    this.isActive = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive? Colors.white.withOpacity(0.1):Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.white.withOpacity(0.3)),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style:
                TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }
}
