import 'package:flutter/material.dart';
import 'package:mental_health/domain/entities/entities.dart';
import 'package:mental_health/domain/entities/role.dart';
import 'package:mental_health/domain/repositories/message_repository.dart';
import 'package:mental_health/infrastructure/datasources/message_bard_datasource.dart';
import 'package:mental_health/infrastructure/repositories/message_bard_repository_impl.dart';
import 'package:mental_health/utils/entities/role_extension.dart';

class MessageRepositoryProvider with ChangeNotifier {
  bool _isLoading = false;
  final TextEditingController messageController = TextEditingController();
  final List<Message> _messages = [];
  // final MessageRepository datasource =
  //     MessageRepositoryImpl(MessageBardDatasource());
  late MessageRepository datasource;
  final ScrollController _scrollController = ScrollController();
  Role _role = Role(
    rol: Roles.conversation.rol,
    image: Roles.conversation.image,
    prompt: Roles.conversation.prompt,
  );

  MessageRepositoryProvider(String token) {
    datasource = MessageRepositoryImpl(MessageBardDatasource(token));
  }

  bool get isLoading => _isLoading;
  List<Message> get messages => _messages;
  ScrollController get scrollController => _scrollController;
  Role get role => _role;

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  set role(Role role) {
    _role = role;
    notifyListeners();
  }

  void addMessage(Message message) {
    _messages.add(message);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> initChat() async {
    addMessage(Message(origin: OriginMessage.bard, content: 'Cargando...'));
    isLoading = true;
    final response = await datasource.initChat(role.prompt);
    _messages.removeLast();
    addMessage(response);
    isLoading = false;
  }

  Future<void> sendMessage(Message message) async {
    addMessage(message);
    addMessage(Message(origin: OriginMessage.bard, content: 'Cargando...'));
    isLoading = true;
    final response = await datasource.sendMessage(message);
    _messages.removeLast();
    addMessage(response);
    isLoading = false;
  }

  void deleteChat() {
    _messages.clear();
    notifyListeners();
  }

  void moveScrollToBottom() async {
    /// We wait a little bit to let the list rebuild
    await Future.delayed(const Duration(milliseconds: 100));

    /// We move the scroll to the bottom
    if (!scrollController.hasClients) return;
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
