import 'package:flutter/material.dart';

class Ring extends StatelessWidget {
  const Ring({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 18,
          color: const Color(0xFF189999),
        ),
        color: Colors.transparent,
      ),
    );
  }
}