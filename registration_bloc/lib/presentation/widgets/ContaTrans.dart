import 'dart:ui';
import 'package:flutter/material.dart';

class ContaTransp extends StatelessWidget {
  ContaTransp({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
     required this.withOp,
    required this.chi,
  });
  double withOp;
  double width;
  double height;
  double radius;
  Widget chi;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.white.withOpacity(withOp),
      ),
      child: chi,
    );
  }
}
