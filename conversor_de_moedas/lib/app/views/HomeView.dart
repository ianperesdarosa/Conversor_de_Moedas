

import 'package:flutter/material.dart';

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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: DropdownButton(
                          underline: Container(height: 1,color: Colors.orange,),
                          items: const [
                          DropdownMenuItem(child: Text('Real'),),
                          DropdownMenuItem(child: Text('Dolar'),),

                        ], onChanged: (value) {
                        
                          },
                        ),
                      ),
                      const SizedBox(width: 35.0),
                      const Expanded(
                        flex: 2,
                        child: TextField(
                          decoration: InputDecoration(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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