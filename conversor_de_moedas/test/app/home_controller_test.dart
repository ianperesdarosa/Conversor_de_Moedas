import 'package:conversor_de_moedas/app/controllers/HomeController.dart';
import 'package:conversor_de_moedas/app/models/Currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController(); 
  final TextEditingController fromText = TextEditingController();
  var homeController = HomeController(toText: toText, fromText: fromText);

  test('Deve conververter de real para dólar', () {
    toText.text = '2.0';
    homeController.covert();
    expect(fromText.text, '0.36');
  });

  test('Deve conververter de real para dólar', () {
    toText.text = '1.0';
    homeController = CurrencyModel(
          name: 'Dolar', real: 5.45, dolar: 1.0, euro: 0.85, bitcoin:0.000088
        ) as HomeController,
    homeController.covert();
    expect(fromText.text, '0.36');
  });
}