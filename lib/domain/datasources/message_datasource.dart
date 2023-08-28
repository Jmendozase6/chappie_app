import 'package:mental_health/domain/entities/entities.dart';

abstract class BardDatasource {
  Future<Message> initChat(String prompt);
  Future<Message> sendMessage(Message newMessage);
}
