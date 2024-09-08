import 'package:flutter/material.dart';
import 'package:dotted_life/homepage.dart';

void main() {
  runApp(const DottedLife());
}

class DottedLife extends StatelessWidget {
  const DottedLife({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const DottedLifeHome(),
    );
  }
}

class DottedLifeHome extends StatefulWidget {
  const DottedLifeHome({super.key});

  @override
  State<DottedLifeHome> createState() => DottedLifeHomeState();
}

