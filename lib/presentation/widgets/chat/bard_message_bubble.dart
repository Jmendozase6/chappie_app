import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mental_health/domain/entities/entities.dart';
import 'package:mental_health/presentation/widgets/chat/text_message.dart';

class BardMessageBubble extends StatelessWidget {
  const BardMessageBubble({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 0.2.sw),
          child: TextMessage(
            color: Colors.white,
            text: message.content,
            origin: message.origin,
          ),
        ),
      ],
    );
  }
}
