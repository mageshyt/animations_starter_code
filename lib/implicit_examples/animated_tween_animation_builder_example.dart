import 'package:flutter/material.dart';

class PulsatingCircleAnimation extends StatelessWidget {
  const PulsatingCircleAnimation({super.key});
  final double size = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pulsating Circle Animation'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 200),
            duration: const Duration(milliseconds: 1500),
            curve: Curves.easeInOut,
            builder: (context, double size, child) {
              return Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      blurRadius: size,
                      spreadRadius: size / 2,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
