import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'counter_title': 'GetX Counter Example',
          'push_message': 'You have pushed the button this many times:',
          'increment': 'Increment',
          'decrement': 'Decrement',
          'reset': 'Reset',
          'multiply': 'Multiply',
        },
        'es_ES': {
          'counter_title': 'Ejemplo Contador GetX',
          'push_message': 'Has presionado el botón estas veces:',
          'increment': 'Incrementar',
          'decrement': 'Decrementar',
          'reset': 'Reiniciar',
          'multiply': 'Multiplicar',
        },
      };
}