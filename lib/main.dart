import 'package:flutter/material.dart';
import 'package:uangkuu/theme.dart';

void main() => runApp(PaymentApps());

class PaymentApps extends StatefulWidget {
  @override
  State<PaymentApps> createState() => _PaymentAppsState();
}

class _PaymentAppsState extends State<PaymentApps> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget option(int index, String title, String subtitle, String pricing) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                  color: selectedIndex == index
                      ? Color(0xff007DFF)
                      : Color(0xff4D5B7C)),
              borderRadius: BorderRadius.circular(14)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                selectedIndex == index
                    ? Image.asset('assets/check.png', width: 18, height: 18)
                    : Image.asset('assets/uncheck.png', width: 18, height: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: planTextStyle),
                    Text(subtitle, style: descTextStyle),
                  ],
                ),
                SizedBox(width: 91),
                Text(
                  pricing,
                  style: priceTextStyle,
                )
              ])
            ],
          ),
        ),
      );
    }

    Widget header() {
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

    Widget checkoutButton() {
      return Column(children: [
        Container(
          width: 311,
          height: 51.23,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff007DFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(71)
              )
            ),
            onPressed: () {},
            child: Text("Checkout Now", style: buttonTextStyle),
          ),
        )
      ]);
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xff04112F),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Column(
                    children: [
                      header(),
                      SizedBox(height: 30,),
                      option(0, "Monthly", "Good for starting up", "\$20"),
                      option(1, "Quarterly", "Focusing on building", "\$55"),
                      option(2, "Yearly", "Steady Company", "\$220"),
                      SizedBox(height: 30,),
                      selectedIndex < 0 ? SizedBox() : checkoutButton(),
                    ],
                  ),
                ),
              ),
            )));
  }
}
