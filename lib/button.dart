import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Text('Rajan Kumar'),
          )
        ],
      ),
    );
  }
}
