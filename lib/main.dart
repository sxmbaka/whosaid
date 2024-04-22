import 'package:flutter/material.dart';
import 'package:whosaid/pages/home_page.dart';

void main() {
  runApp(const WhoSaidApp());
}

class WhoSaidApp extends StatelessWidget {
  const WhoSaidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhoSaid",
      home: HomePage(),
    );
  }
}
