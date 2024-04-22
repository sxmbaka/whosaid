import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosaid/components/whosaid_appbar.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhoSaidAppBar(
        title: Text(
          "Updates",
          style: GoogleFonts.robotoCondensed(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      backgroundColor: Colors.red,
      body: const Center(
        child: Text("Updates"),
      ),
    );
  }
}
