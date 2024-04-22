import 'package:whosaid/models/sent_message_status.dart';

class Chat {
  final String chatName;
  final bool isGroupChat;
  final String imagePath;
  final bool lastRecieved;
  final SentMessageStatus sentMessageStatus;
  final bool isPinned;
  final String lastRecievedMessage;
  final bool isMute;

  const Chat({
    required this.chatName,
    required this.imagePath,
    required this.isGroupChat,
    required this.isMute,
    required this.isPinned,
    required this.lastRecieved,
    required this.lastRecievedMessage,
    required this.sentMessageStatus,
  });
}