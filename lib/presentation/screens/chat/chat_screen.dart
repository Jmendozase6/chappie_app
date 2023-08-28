import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_health/presentation/providers/home/message_repository_provider.dart';
import 'package:mental_health/presentation/widgets/widgets.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messagesProvider = context.watch<MessageRepositoryProvider>();

    return WillPopScope(
      onWillPop: () async {
        if (messagesProvider.isLoading) return false;
        messagesProvider.deleteChat();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
            onPressed: () {
              if (messagesProvider.isLoading) return;
              messagesProvider.deleteChat();
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: const ChatView(),
      ),
    );
  }
}
