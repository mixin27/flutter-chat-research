import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Load `.env` data.
Future<void> loadEnv({String envPath = 'assets/env/.env'}) async {
  await dotenv.load(fileName: envPath);
}

class EnvironmentVars {
  EnvironmentVars._();

  static String get onesignalAppId => dotenv.env['ONESIGNAL_APP_ID'] ?? '';
}
