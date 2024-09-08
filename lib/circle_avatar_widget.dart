import 'package:flutter/material.dart';


  Widget circleAvatar(Color color, double radius) {
    return Padding(
        padding: const EdgeInsets.all(4),
        child: CircleAvatar(
          radius: radius,
          backgroundColor: color,
        ));
  }
