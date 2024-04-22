import 'package:flutter/material.dart';

class PinnedChatIndicator extends StatelessWidget {
  const PinnedChatIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.only(left: 5),
      child: Icon(
        Icons.push_pin,
        color: Colors.grey,
      ),
    );
  }
}
