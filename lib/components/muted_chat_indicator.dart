import 'package:flutter/material.dart';

class MutedChatIndicator extends StatelessWidget {
  const MutedChatIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      margin: const EdgeInsets.only(left: 5),
      child: const Icon(
        Icons.notifications_off,
        color: Colors.grey,
      ),
    );
  }
}
