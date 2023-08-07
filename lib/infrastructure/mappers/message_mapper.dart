import 'package:mental_health/domain/entities/entities.dart';
import 'package:mental_health/services/bard/bard_api.dart';

class MessageMapper {
  static Message bardResponseToMessage(BardResponse res) {
    return Message(
      origin: OriginMessage.bard,
      content: res.choices?.first.content?.first ?? '',
    );
  }
}
