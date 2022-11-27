// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Function of creating buttons of calculator
  Widget CalcButton(String btntxt) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 14),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            btntxt,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff272B33),
            padding: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22252D),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xff22252D),
              height: MediaQuery.of(context).size.height * 0.35,
              // TODO
              // Work on creating upperpart od container
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: const <Widget>[
              //     Padding(
              //       padding: EdgeInsets.all(10.0),
              //       child: Text(
              //         '0',
              //         textAlign: TextAlign.left,
              //         style: TextStyle(
              //           fontSize: 50,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: const BoxDecoration(
                color: Color(0xff292D36),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('AC'),
                        CalcButton('+/-'),
                        CalcButton('%'),
                        CalcButton('/'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('7'),
                        CalcButton('8'),
                        CalcButton('9'),
                        CalcButton('x'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('4'),
                        CalcButton('5'),
                        CalcButton('6'),
                        CalcButton('-'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('1'),
                        CalcButton('2'),
                        CalcButton('3'),
                        CalcButton('+'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('0'),
                        CalcButton('0'),
                        CalcButton('.'),
                        CalcButton('='),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
