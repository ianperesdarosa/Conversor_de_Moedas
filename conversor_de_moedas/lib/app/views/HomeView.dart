

import 'package:flutter/material.dart';

import '../widgets/Currency_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height:  double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: SizedBox(
                  width: 250.0,
                  height: 250.0,
                  child: Image.asset('assets/images/logo.png')),
              ),
              const Currency_Box(),
              Padding(
                padding: const EdgeInsets.only(top: 65.0),
                child: ElevatedButton(onPressed: () {
                      
                      }, child: const Text('Converter'),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}