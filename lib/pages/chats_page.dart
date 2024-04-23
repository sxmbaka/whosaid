import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosaid/components/appbar_action_button.dart';
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
  final List<Widget> _chatTiles = [
    ChatTile(
      chat: Chat(
        timeStamp: DateTime.now().subtract(const Duration(days: 30)),
        chatName: "Mirgi",
        isGroupChat: false,
        isMute: false,
        isPinned: true,
        lastRecieved: false,
        lastRecievedMessage: "Who said i wasnt gay nigg!",
        sentMessageStatus: SentMessageStatus.sentNotReceived,
        imagePath:
            "assets/images/young-crazy-man-happy-expression_1194-5236.jpg",
        hasPfp: true,
      ),
    ),
    ChatTile(
      chat: Chat(
        timeStamp: DateTime.now().subtract(const Duration(days: 30)),
        numberOfUnreads: 0,
        chatName: "Mirgi",
        isGroupChat: false,
        isMute: true,
        isPinned: true,
        lastRecieved: false,
        lastRecievedMessage: "Who said i wasnt gay nigg!",
        sentMessageStatus: SentMessageStatus.sentNotReceived,
      ),
    ),
    ChatTile(
      chat: Chat(
          chatName: "Mirgi",
          timeStamp: DateTime.now().subtract(const Duration(days: 30)),
          isGroupChat: false,
          isMute: true,
          numberOfUnreads: 8,
          isPinned: false,
          lastRecieved: false,
          lastRecievedMessage: "Who said i wasnt gay nigg!",
          sentMessageStatus: SentMessageStatus.sentNotReceived,
          hasPfp: true,
          imagePath:
              'assets/images/senior-man-purple-shirt-looking-camera-with-arm-out-like-asking-question-standing-orange_141793-109031.jpg'),
    ),
    ChatTile(
      chat: Chat(
        chatName: "Mirgi",
        isGroupChat: false,
        timeStamp: DateTime.now().subtract(const Duration(days: 1)),
        isMute: true,
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
        timeStamp: DateTime.now().subtract(const Duration(hours: 17)),
        isMute: false,
        numberOfUnreads: 1000,
        isPinned: false,
        lastRecieved: false,
        lastRecievedMessage:
            "Who said i wasnt gay nigg!daefbwbwsbdahbfffffffffaaaaaaaaaaaaaaa",
        sentMessageStatus: SentMessageStatus.sentNotReceived,
      ),
    ),
    ChatTile(
      chat: Chat(
        chatName: "Miyagi",
        isGroupChat: false,
        timeStamp: DateTime.now().subtract(const Duration(hours: 17)),
        isMute: false,
        numberOfUnreads: 1000,
        isPinned: false,
        lastRecieved: false,
        lastRecievedMessage:
            "Who said i wasnt gay nigg!daefbwbwsbdahbfffffffffaaaaaaaaaaaaaaa",
        sentMessageStatus: SentMessageStatus.sentNotReceived,
      ),
    ),
    ChatTile(
      chat: Chat(
        chatName: "Miyagi",
        isGroupChat: false,
        timeStamp: DateTime.now().subtract(const Duration(hours: 17)),
        isMute: false,
        numberOfUnreads: 1000,
        isPinned: false,
        lastRecieved: false,
        lastRecievedMessage:
            "Who said i wasnt gay nigg!daefbwbwsbdahbfffffffffaaaaaaaaaaaaaaa",
        sentMessageStatus: SentMessageStatus.sentNotReceived,
      ),
    ),
    ChatTile(
      chat: Chat(
        chatName: "Miyagi",
        isGroupChat: false,
        timeStamp: DateTime.now().subtract(const Duration(hours: 17)),
        isMute: false,
        numberOfUnreads: 1000,
        isPinned: false,
        lastRecieved: false,
        lastRecievedMessage:
            "Who said i wasnt gay nigg!daefbwbwsbdahbfffffffffaaaaaaaaaaaaaaa",
        sentMessageStatus: SentMessageStatus.sentNotReceived,
      ),
    ),
    ChatTile(
      chat: Chat(
        chatName: "Miyagi",
        isGroupChat: false,
        timeStamp: DateTime.now().subtract(const Duration(hours: 17)),
        isMute: false,
        numberOfUnreads: 1000,
        isPinned: false,
        lastRecieved: false,
        lastRecievedMessage:
            "Who said i wasnt gay nigg!daefbwbwsbdahbfffffffffaaaaaaaaaaaaaaa",
        sentMessageStatus: SentMessageStatus.sentNotReceived,
      ),
    ),
    ChatTile(
      chat: Chat(
        chatName: "Miyagi",
        isGroupChat: false,
        timeStamp: DateTime.now().subtract(const Duration(hours: 17)),
        isMute: false,
        numberOfUnreads: 1000,
        isPinned: false,
        lastRecieved: false,
        lastRecievedMessage:
            "Who said i wasnt gay nigg!daefbwbwsbdahbfffffffffaaaaaaaaaaaaaaa",
        sentMessageStatus: SentMessageStatus.sentNotReceived,
      ),
    ),
    ChatTile(
      chat: Chat(
        chatName: "Miyagi",
        isGroupChat: false,
        timeStamp: DateTime.now().subtract(const Duration(hours: 17)),
        isMute: false,
        numberOfUnreads: 1000,
        isPinned: false,
        lastRecieved: false,
        lastRecievedMessage:
            "Who said i wasnt gay nigg!daefbwbwsbdahbfffffffffaaaaaaaaaaaaaaa",
        sentMessageStatus: SentMessageStatus.sentNotReceived,
      ),
    ),
  ];

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
        actions: const <Widget>[
          AppBarActionButton(icon: Icons.camera_alt),
          AppBarActionButton(icon: Icons.more_vert),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [..._chatTiles],
        ),
      ),
    );
  }
}
