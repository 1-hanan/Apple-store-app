import 'package:flutter/material.dart';

class TextFieldC extends StatelessWidget {
  const TextFieldC({super.key, required this.text});

  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: text,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue,)
                    ),
                  ),
                ),
   );
  }
}