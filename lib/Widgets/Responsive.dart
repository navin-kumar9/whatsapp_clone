import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key, required this.MobileScreen, required this.WebScreen});

  final Widget MobileScreen;
  final Widget WebScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return WebScreen;
        } else {
          return MobileScreen;
        }
      },
    );
  }
}
