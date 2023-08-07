import 'package:mental_health/domain/entities/message.dart';
import 'package:mental_health/domain/repositories/bard_repository.dart';
import 'package:mental_health/infrastructure/datasources/message_bard_datasource.dart';

class MessageBardRepositoryImpl extends BardRepository {
  final MessageBardDatasource datasource;

  MessageBardRepositoryImpl(this.datasource);

  @override
  Future<Message> initChat(String prompt) async {
    return await datasource.initChat(prompt);
  }

  @override
  Future<Message> sendMessage(Message newMessage) async {
    return await datasource.sendMessage(newMessage);
  }
}
