import 'package:flutter/material.dart';

class MutedChatIndicator extends StatelessWidget {
  const MutedChatIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.only(left: 5),
      child: Icon(
        Icons.notifications_off,
        color: Colors.grey,
      ),
    );
  }
}
