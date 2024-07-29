import 'package:flutter/material.dart';

class Umar extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const Umar({super.key,
    required this.title,
    this.color=const Color(0xffa5a5a5),
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(child: Text(title, style: TextStyle(fontSize: 15, color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}
