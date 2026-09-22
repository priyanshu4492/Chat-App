import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderID;
  final String senderEmail;
  final String receiveID;
  final String message;
  final Timestamp timestamp;

  Message({
    required this.message,
    required this.receiveID,
    required this.senderEmail,
    required this.senderID,
    required this.timestamp,
  });

  //convert to a map
  Map<String, dynamic> toMap() {
    return {
      'senderId': senderID,
      'senderEmail': senderEmail,
      'receiveID': receiveID,
      'message': message,
      'timestamp': timestamp,
    };
  }
}
