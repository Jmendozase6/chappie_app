// import 'package:flutter/foundation.dart';
// import 'package:mental_health/utils/constants/constants.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// class SupabaseServer {
//   static final supabase = Supabase.instance.client;

//   static Future<void> initSupabase() async {
//     await Supabase.initialize(
//       url: AppConstants.SUPABASE_URL,
//       anonKey: AppConstants.SUPABASE_ANON_KEY,
//       debug: kDebugMode,
//     );
//   }

//   static Future<String> getCookie() async {
//     final cookie = await supabase.from('__Secure-1PSID').select();
//     return cookie[0]['key'];
//   }
// }
