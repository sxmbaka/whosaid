import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosaid/components/chat_search_bar.dart';
import 'package:whosaid/components/whosaid_appbar.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhoSaidAppBar(
        title: Text(
          'WhoSaid',
          style: GoogleFonts.robotoCondensed(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ChatSearchBar(),
          ],
        ),
      ),
    );
  }
}
