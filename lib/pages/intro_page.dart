import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/whatsapp-logo.png",
              height: 100,
            ),
            const Gap(10),
            Text(
              "WhoSaid",
              style: GoogleFonts.oswald(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
