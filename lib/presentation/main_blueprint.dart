import 'package:archiver/presentation/login.dart';
import 'package:flutter/material.dart';

class MainBluePrint extends StatelessWidget {
  const MainBluePrint({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
