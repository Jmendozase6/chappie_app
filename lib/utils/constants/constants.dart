// ignore_for_file: non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AppConstants {
  final supabase = Supabase.instance.client;

  static final SUPABASE_URL = dotenv.get('SUPABASE_URL');
  static final SUPABASE_ANON_KEY = dotenv.get('SUPABASE_ANON_KEY');
  static const homeScreenTitle = 'Selecciona un rol para comenzar';

  Future<String> getToken() async {
    final token = await supabase.from('Token').select().single();
    return token['key'];
  }
}
