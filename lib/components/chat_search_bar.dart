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
        color: Color.fromARGB(255, 54, 53, 53),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Color.fromARGB(255, 194, 189, 189),
          ),
          Gap(10),
          Text(
            "Search...",
            style: GoogleFonts.robotoCondensed(
              color: Color.fromARGB(255, 194, 189, 189),
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
