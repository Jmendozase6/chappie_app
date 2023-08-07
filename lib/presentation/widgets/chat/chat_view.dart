import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mental_health/presentation/widgets/chat/bard_message_bubble.dart';
import 'package:mental_health/presentation/widgets/shared/message_field_box.dart';
import 'package:mental_health/presentation/widgets/chat/my_message_bubble.dart';
import 'package:provider/provider.dart';
import 'package:mental_health/domain/entities/entities.dart';
import 'package:mental_health/presentation/providers/message_repository_provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final messagesProvider = context.watch<MessageRepositoryProvider>();

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.builder(
                itemCount: messagesProvider.messages.length,
                controller: messagesProvider.scrollController,
                itemBuilder: (_, index) {
                  Message message = messagesProvider.messages[index];
                  return message.origin == OriginMessage.bard
                      ? BardMessageBubble(message: message)
                      : MyMessageBubble(message: message);
                },
              ),
            ),
            MessageFieldBox(
              onValue: (value) {
                if (value.isEmpty) return;
                messagesProvider.sendMessage(
                  Message(origin: OriginMessage.me, content: value),
                );
              },
              myMessageController: messagesProvider.messageController,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
