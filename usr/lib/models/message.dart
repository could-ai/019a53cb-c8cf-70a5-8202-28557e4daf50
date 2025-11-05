class Message {
  final String text;
  final bool isUser;
  final DateTime timestamp;
  final String? id;

  Message({
    required this.text,
    required this.isUser,
    required this.timestamp,
    this.id,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      text: json['text'] as String,
      isUser: json['isUser'] as bool,
      timestamp: DateTime.parse(json['timestamp'] as String),
      id: json['id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'isUser': isUser,
      'timestamp': timestamp.toIso8601String(),
      'id': id,
    };
  }
}