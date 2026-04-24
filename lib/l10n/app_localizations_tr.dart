// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'SensoryPath';

  @override
  String get safeRoute => 'Güvenli Rota';

  @override
  String get history => 'Geçmiş';

  @override
  String get dashboard => 'Gösterge';

  @override
  String get noiseLevel => 'Gürültü Seviyesi';

  @override
  String decibel(int db) {
    return '$db dB';
  }

  @override
  String get calm => 'Sakin';

  @override
  String get noisy => 'Gürültülü';

  @override
  String get danger => 'Tehlike!';

  @override
  String get putOnHeadphones => 'Kulaklığını tak!';

  @override
  String get statusNormal => 'Durum: Normal';

  @override
  String get statusHigh => 'Durum: YÜKSEK GÜRÜLTÜ';

  @override
  String get historyEmpty => 'Geçmiş kriz kaydı bulunamadı.';

  @override
  String get historyTitle => 'Kriz Geçmişi';

  @override
  String dateLabel(String date) {
    return 'Tarih: $date';
  }
}
