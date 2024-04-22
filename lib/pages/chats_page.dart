import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosaid/components/chat_search_bar.dart';
import 'package:whosaid/components/chat_tile.dart';
import 'package:whosaid/components/whosaid_appbar.dart';
import 'package:whosaid/models/chat.dart';
import 'package:whosaid/models/sent_message_status.dart';

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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            ChatSearchBar(),
            ChatTile(
              chat: Chat(
                timeStamp: DateTime.now().subtract(Duration(days: 30)),
                chatName: "Mirgi",
                isGroupChat: false,
                isMute: false,
                isPinned: false,
                lastRecieved: false,
                lastRecievedMessage: "Who said i wasnt gay nigg!",
                sentMessageStatus: SentMessageStatus.sentNotReceived,
              ),
            ),
            ChatTile(
              chat: Chat(
                timeStamp: DateTime.now().subtract(Duration(days: 30)),
                chatName: "Mirgi",
                isGroupChat: false,
                isMute: false,
                isPinned: false,
                lastRecieved: false,
                lastRecievedMessage: "Who said i wasnt gay nigg!",
                sentMessageStatus: SentMessageStatus.sentNotReceived,
              ),
            ),
            ChatTile(
              chat: Chat(
                chatName: "Mirgi",
                timeStamp: DateTime.now().subtract(Duration(days: 30)),
                isGroupChat: false,
                isMute: false,
                isPinned: false,
                lastRecieved: false,
                lastRecievedMessage: "Who said i wasnt gay nigg!",
                sentMessageStatus: SentMessageStatus.sentNotReceived,
              ),
            ),
            ChatTile(
              chat: Chat(
                chatName: "Mirgi",
                isGroupChat: false,
                timeStamp: DateTime.now().subtract(Duration(days: 1)),
                isMute: false,
                isPinned: false,
                lastRecieved: false,
                lastRecievedMessage: "Who said i wasnt gay nigg!",
                sentMessageStatus: SentMessageStatus.sentNotReceived,
              ),
            ),
            ChatTile(
              chat: Chat(
                chatName: "Miyagi",
                isGroupChat: false,
                timeStamp: DateTime.now().subtract(Duration(hours: 17)),
                isMute: false,
                isPinned: false,
                lastRecieved: false,
                lastRecievedMessage: "Who said i wasnt gay nigg!daefbwbwsbdahbfffffffffaaaaaaaaaaaaaaa",
                sentMessageStatus: SentMessageStatus.sentNotReceived,
              ),
            ),
            Placeholder(),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
