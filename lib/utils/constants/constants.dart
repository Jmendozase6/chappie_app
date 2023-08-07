// ignore_for_file: non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  static final Secure1PSID = dotenv.get('__Secure-1PSID');
  static const homeScreenTitle = 'Selecciona un rol para comenzar';
}
