import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromARGB(255, 54, 53, 53),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: SearchBar(
        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 54, 53, 53)),
        elevation: MaterialStatePropertyAll(0),
        side: MaterialStatePropertyAll(BorderSide.none),
      ),
    );
  }
}
