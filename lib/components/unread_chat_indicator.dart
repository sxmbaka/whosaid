import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UnreadChatIndicator extends StatelessWidget {
  final int numberOfUnreads;
  const UnreadChatIndicator({
    super.key,
    required this.numberOfUnreads,
  });

  @override
  Widget build(BuildContext context) {
    String formatNumberOfUnreads(int numberOfUnreads) {
      if (numberOfUnreads == 0) {
        return "";
      } else if (numberOfUnreads > 9) {
        return "9+";
      } else
        return numberOfUnreads.toString();
    }

    return Container(
      width: 25,
      height: 25,
      margin: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.green[400],
      ),
      child: Center(
        child: Text(
          formatNumberOfUnreads(numberOfUnreads),
          style: GoogleFonts.aBeeZee(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
