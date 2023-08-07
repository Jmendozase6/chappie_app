import 'package:mental_health/domain/entities/entities.dart';

abstract class BardRepository {
  Future<Message> initChat(String prompt);
  Future<Message> sendMessage(Message newMessage);
}
