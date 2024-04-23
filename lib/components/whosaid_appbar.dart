import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class WhoSaidAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final List<Widget> actions;

  const WhoSaidAppBar({
    super.key,
    required this.title,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return EasySearchBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      title: title,
      iconTheme: const IconThemeData(color: Colors.white),
      onSearch: (p0) {},
      backgroundColor: Colors.green.shade400,
      actions: actions,
      putActionsOnRight: true,
      foregroundColor: Colors.white,
      searchBackgroundColor: Colors.green.shade400,
      searchCursorColor: Colors.white,
      searchHintText: 'Search...',
      searchHintStyle: GoogleFonts.robotoCondensed(
        color: Colors.white60,
        fontSize: 20,
      ),
      openOverlayOnSearch: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
