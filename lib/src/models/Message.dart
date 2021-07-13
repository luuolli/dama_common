import 'dart:convert';

/// # Message
/// Message shared between server and client.
class Message {
  String message;
  String username;

  Message({
    required this.message,
    required this.username,
  });

  /// Convert data `Map` into object `Message`.
  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      message: map['message'] as String,
      username: map['username'] as String,
    );
  }

  /// Convert `String` json into object `Message`.
  factory Message.fromJson(String source) {
    return Message.fromMap(json.decode(source));
  }

  /// Convert object `Message` into `Map`.
  /// ```json
  /// {
  ///   "username":"username",
  ///   "message":"message",
  /// }
  /// ```
  Map<String, String> toMap() {
    return {
      'username': username,
      'message': message,
    };
  }

  /// Convert object `Message` into json `String`.
  /// ```
  /// '{"username":"username","message":"message"}'
  /// ```
  String toJson() => json.encode(toMap());

  @override
  String toString() => 'Position(username: $username, message: $message)';
}
