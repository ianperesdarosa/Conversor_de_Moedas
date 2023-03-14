
import 'package:flutter/material.dart';


// ignore: camel_case_types
class Currency_Box extends StatelessWidget {
  const Currency_Box({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: DropdownButton(
                          iconEnabledColor: Colors.orange,
                          underline: Container(height: 1,color: Colors.orange,),
                          items: [
                          DropdownMenuItem(child: Text('Real'),
                          ),
                          DropdownMenuItem(child: Text('Dolar'),
                          ),

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
              );
  }
}