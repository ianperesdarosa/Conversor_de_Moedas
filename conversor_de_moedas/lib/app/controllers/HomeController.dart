// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, duplicate_ignore
import 'package:flutter/material.dart';

import '../models/Currency_model.dart';

// ignore: duplicate_ignore
class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController toText = TextEditingController(); 
  final TextEditingController fromText = TextEditingController();

  CurrencyModel ToCurrency;
  CurrencyModel FromCurrency;


  HomeController({this.toText, this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    ToCurrency = currencies[0];
    FromCurrency = currencies[1];
  }
  
  void covert() {

    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if(FromCurrency.name == 'Real') {
      returnValue = value * ToCurrency.real;
    }
    else if(FromCurrency.name == 'Dolar') {
      returnValue = value * ToCurrency.dolar;
    }
    else if(FromCurrency.name == 'Euro') {
      returnValue = value * ToCurrency.euro;
    }
    else if(FromCurrency.name == 'Bitcoin') {
      returnValue = value * ToCurrency.bitcoin;
    }
    
    fromText.text = returnValue.toStringAsFixed(2);

  }

}
