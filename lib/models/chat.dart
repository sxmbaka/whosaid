import 'package:whosaid/models/sent_message_status.dart';

class Chat {
  final String chatName;
  final bool isGroupChat;
  final bool lastRecieved;
  final SentMessageStatus sentMessageStatus;
  final bool isPinned;
  final String lastRecievedMessage;
  final bool isMute;

  DateTime timeStamp;
  String imagePath;
  bool hasPfp;

  Chat({
    required this.chatName,
    required this.isGroupChat,
    required this.isMute,
    required this.isPinned,
    required this.lastRecieved,
    required this.lastRecievedMessage,
    required this.sentMessageStatus,
    this.imagePath = "assets/images/default-profile-photo.png",
    this.hasPfp = false,
    required this.timeStamp,
  });// : timeStamp = DateTime.now();
}
