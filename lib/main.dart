import 'package:flutter/material.dart';

void main() => runApp(PaymentApps());


class PaymentApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/rocket.png')
            ]
          ),
        )
      )
    );
  }
}