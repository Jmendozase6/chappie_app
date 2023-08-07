import 'package:mental_health/domain/datasources/bard_datasource.dart';
import 'package:mental_health/domain/entities/entities.dart';
import 'package:mental_health/infrastructure/mappers/message_mapper.dart';
import 'package:mental_health/services/bard/bard_api.dart';
import 'package:mental_health/utils/constants/constants.dart';

class MessageBardDatasource implements BardDatasource {
  final bard = ChatBot(sessionId: AppConstants.Secure1PSID);

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
