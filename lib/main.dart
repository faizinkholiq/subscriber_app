import 'package:flutter/material.dart';
import 'package:uangkuu/theme.dart';

void main() => runApp(PaymentApps());

class PaymentApps extends StatelessWidget {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xff04112F),
            body: SafeArea(
              child: Column(
                children: [
                  Header(),
                  Option(0),
                  Option(1),
                  Option(2),
                ],
              ),
            )));
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 32, right: 32),
      child: Column(children: [
        Center(
          child: Image.asset(
            'assets/header.png',
            width: 230,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Upgrade to",
              style: titleTextStyle,
            ),
            SizedBox(
              width: 6,
            ),
            Text("Pro", style: titleProTextStyle)
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Go unlock all features and \nbuild your own business bigger",
          style: subtitleTextStyle,
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}

class Option extends StatefulWidget {
  final int index;

  Option(this.index);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  int selectedIndex = -1;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = widget.index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
                color:
                    selectedIndex == widget.index ? Color(0xff007DFF) : Color(0xff4D5B7C)),
            borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
