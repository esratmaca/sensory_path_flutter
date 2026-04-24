// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'SensoryPath';

  @override
  String get safeRoute => 'Safe Route';

  @override
  String get history => 'History';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get noiseLevel => 'Noise Level';

  @override
  String decibel(int db) {
    return '$db dB';
  }

  @override
  String get calm => 'Calm';

  @override
  String get noisy => 'Noisy';

  @override
  String get danger => 'Danger!';

  @override
  String get putOnHeadphones => 'Put on your headphones!';

  @override
  String get statusNormal => 'Status: Normal';

  @override
  String get statusHigh => 'Status: HIGH NOISE';

  @override
  String get historyEmpty => 'No past crisis records found.';

  @override
  String get historyTitle => 'Crisis History';

  @override
  String dateLabel(String date) {
    return 'Date: $date';
  }
}
