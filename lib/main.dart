import 'package:flutter/material.dart';
import 'package:uangkuu/theme.dart';

void main() => runApp(PaymentApps());


class PaymentApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff04112F),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 32, right: 32),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/header.png',
                    width: 230,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 75, right: 0),
                  child: Center(
                    child: Row(
                      children: [
                        Text("Upgrade to", style: titleTextStyle,),
                        SizedBox(width: 6,),
                        Text("Pro", style: titleProTextStyle)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:16.0),
                  child: Text("Go unlock all features and \nbuild your own business bigger", style: subtitleTextStyle, textAlign: TextAlign.center,),
                )
              ]
            ),
          ),
        )
      )
    );
  }
}