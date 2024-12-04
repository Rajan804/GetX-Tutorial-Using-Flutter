import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name',
          'name': 'Hello World',
        },
        'Hindi_India': {
          'message': 'आपका क्या नाम है',
          'name': 'हैलो वर्ल्ड',
        },
      };
}
