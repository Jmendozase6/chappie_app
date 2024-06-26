import 'package:mental_health/domain/entities/entities.dart';

abstract class MessageRepository {
  Future<Message> initChat(String prompt);
  Future<Message> sendMessage(Message newMessage);
}
