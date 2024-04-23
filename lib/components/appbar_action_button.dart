import 'package:flutter/material.dart';

class AppBarActionButton extends StatelessWidget {
  final IconData icon;
  const AppBarActionButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Icon(
        icon,
        size: 25,
        color: Colors.white,
      ),
    );
  }
}
