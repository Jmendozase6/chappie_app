enum OriginMessage { bard, me }

class Message {
  final OriginMessage origin;
  final String content;

  Message({
    required this.origin,
    required this.content,
  });
}
