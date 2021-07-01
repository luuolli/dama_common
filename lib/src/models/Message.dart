import 'dart:convert';

class Message {
  String message;
  String username;

  Message({
    required this.message,
    required this.username,
  });

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(message: map['message'], username: map['username']);
  }

  factory Message.fromJson(String source) {
    return Message.fromMap(json.decode(source));
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'username': username,
    };
  }

  String toJson() => json.encode(toMap());
}
