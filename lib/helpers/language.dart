// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Map<String, dynamic> words(BuildContext context) {
  return Provider.of<Language>(context).getWords;
}

class Language with ChangeNotifier {
  String languageDirection = 'ltr';
  String languageCode = 'en';

  void setLanguage(code, direction) async {
    languageCode = code;
    languageDirection = direction;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('languageCode', languageCode);
    sharedPreferences.setString('languageDirection', direction);
    notifyListeners();
  }

  Future<void> getLanguageDataInLocal() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    languageCode = sharedPreferences.getString('languageCode') ?? languageCode;
    languageDirection =
        sharedPreferences.getString('languageDirection') ?? languageDirection;
    notifyListeners();
  }

  Map<String, dynamic> get getWords => _words[languageCode];

  // language words
  final Map<String, dynamic> _words = {
    'kr': {
      'home': 'سەرەکی',
    },
    'en': {
      'home': 'Home',
    },
    'ar': {
      'home': 'الصفحة الرئيسية',
    },
  };
}
