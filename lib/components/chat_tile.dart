import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosaid/components/muted_chat_indicator.dart';
import 'package:whosaid/components/pinned_chat_indicator.dart';
import 'package:whosaid/components/unread_chat_indicator.dart';
import 'package:whosaid/models/chat.dart';

class ChatTile extends StatefulWidget {
  final Chat chat;
  const ChatTile({
    super.key,
    required this.chat,
  });

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  Color _timeStampColor = Colors.grey;

  String formatTimeStamp(DateTime timeStamp) {
    final now = DateTime.now();
    final difference = now.difference(timeStamp);

    if (difference.inHours < 24) {
      // If timestamp is less than 24 hours ago, display time
      return DateFormat.jm().format(timeStamp); // Format time in hh:mm am/pm
    } else if (difference.inHours < 48) {
      // If timestamp is less than 48 hours but more than 24 hours ago, display "Yesterday"
      return 'Yesterday';
    } else {
      // If timestamp is over 48 hours ago, display date in dd/mm/yy format
      return DateFormat('dd/MM/yy').format(timeStamp);
    }
  }

  List<Widget> statusIcons = [];

  @override
  void initState() {
    if (widget.chat.isMute) {
      statusIcons.add(MutedChatIndicator());
    }
    if (widget.chat.isPinned) {
      statusIcons.add(PinnedChatIndicator());
    }
    if (widget.chat.numberOfUnreads >= 0) {
      statusIcons.add(
        UnreadChatIndicator(
          numberOfUnreads: widget.chat.numberOfUnreads,
        ),
      );
      if (widget.chat.numberOfUnreads > 0) {
        _timeStampColor = Colors.green.shade400;
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: MediaQuery.of(context).size.height / 11,
      child: Row(
        children: [
          Image.asset(
            widget.chat.imagePath,
            color: widget.chat.hasPfp ? null : Colors.white,
          ),
          const Gap(10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chat.chatName,
                  style: GoogleFonts.robotoCondensed(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  widget.chat.lastRecievedMessage,
                  style: GoogleFonts.robotoCondensed(
                    color: Colors.grey,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  formatTimeStamp(widget.chat.timeStamp),
                  style: GoogleFonts.robotoCondensed(
                    color: _timeStampColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: statusIcons,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
