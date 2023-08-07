import 'package:mental_health/utils/constants/app_images.dart';

enum Roles {
  chef,
  counselor,
  teacher,
  conversation,
}

extension InternRoles on Roles {
  String get rol {
    return switch (this) {
      Roles.chef => 'Chef',
      Roles.counselor => 'Orientador',
      Roles.teacher => 'Profesor',
      Roles.conversation => 'Conversación',
    };
  }

  String get image {
    return switch (this) {
      Roles.chef => AppImages.chefRol,
      Roles.counselor => AppImages.counselorRol,
      Roles.teacher => AppImages.teacherRol,
      Roles.conversation => AppImages.conversationRol,
    };
  }

  String get prompt {
    return switch (this) {
      Roles.chef => 'Te llamas Zen, compórtate cómo un chef excelente',
      Roles.counselor =>
        'Te llamas Deshua, compórtate cómo alguien que ayudará a alguien que se siente mal',
      Roles.teacher =>
        'Te llamas Kassi, compórtate cómo un profesor y me enseñarás todo lo que quiera sobre un tema',
      Roles.conversation =>
        'Te llamas Jandy, compórtate cómo un gran charlador, tienes gran enganche cuando las personas te hablan',
    };
  }
}
