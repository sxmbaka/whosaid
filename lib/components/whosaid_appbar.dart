import 'package:flutter/material.dart';

class WhoSaidAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  // final List<Widget> actions;

  const WhoSaidAppBar({
    super.key,
    required this.title,
    // required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      color: Colors.black,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          title,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
