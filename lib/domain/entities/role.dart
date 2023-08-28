import 'package:mental_health/utils/entities/role_extension.dart';

class Role {
  final String rol;
  final String image;
  final String prompt;

  Role({
    required this.rol,
    required this.image,
    required this.prompt,
  });
}

final roles = <Role>[
  Role(
    rol: Roles.chef.rol,
    image: Roles.chef.image,
    prompt: Roles.chef.prompt,
  ),
  Role(
    rol: Roles.conversation.rol,
    image: Roles.conversation.image,
    prompt: Roles.conversation.prompt,
  ),
  Role(
    rol: Roles.counselor.rol,
    image: Roles.counselor.image,
    prompt: Roles.counselor.prompt,
  ),
  Role(
    rol: Roles.teacher.rol,
    image: Roles.teacher.image,
    prompt: Roles.teacher.prompt,
  ),
];
