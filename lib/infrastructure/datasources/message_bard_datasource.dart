import 'package:mental_health/domain/datasources/message_datasource.dart';
import 'package:mental_health/domain/entities/entities.dart';
import 'package:mental_health/infrastructure/mappers/message_mapper.dart';
import 'package:mental_health/services/bard/bard_api.dart';

class MessageBardDatasource implements BardDatasource {
  late ChatBot bard;
  // late ChatBot bard;

  MessageBardDatasource(String token) {
    bard = ChatBot(sessionId: token);
  }

  @override
  Future<Message> sendMessage(Message newMessage) async {
    final response = await bard.ask(
      newMessage.content,
    );
    final message = MessageMapper.bardResponseToMessage(response);
    return message;
  }

  @override
  Future<Message> initChat(String prompt) async {
    final response = await bard.ask(
      prompt,
    );
    final message = MessageMapper.bardResponseToMessage(response);
    return message;
  }
}
