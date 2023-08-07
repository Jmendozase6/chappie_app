import 'package:flutter/material.dart';
import 'package:mental_health/domain/entities/entities.dart';
import 'package:mental_health/presentation/widgets/chat/text_message.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Align(
      alignment: Alignment.centerRight,
      child: TextMessage(
        color: colors.primary,
        text: message.content,
        origin: message.origin,
      ),
    );
  }
}
