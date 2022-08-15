import 'package:flutter/material.dart';

import '../theme.dart';
class courseGrid extends StatelessWidget {
  const courseGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/images/apple.png', fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "E-Kerja",
                style: BlackText.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Sign in to your account",
                style: GreyText.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ]));
  }
}