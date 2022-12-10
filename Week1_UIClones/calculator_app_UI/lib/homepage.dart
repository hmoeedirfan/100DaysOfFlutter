// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Function of creating buttons of calculator
  Widget CalcButton(String btntxt, Color color) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 14, 10, 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          btntxt,
          style: TextStyle(
            color: color,
            fontSize: 30,
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
              height: MediaQuery.of(context).size.height * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 18, 8),
                        child: Text(
                          '23 * 80',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 18, 30),
                        child: Text(
                          '1840',
                          style: TextStyle(
                            letterSpacing: 1.2,
                            fontSize: 70,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: const BoxDecoration(
                color: Color(0xff292D36),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 14, 0, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('AC', Colors.green),
                        CalcButton('(', Colors.green),
                        CalcButton(')', Colors.green),
                        CalcButton('/', Colors.pink),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('7', Colors.white),
                        CalcButton('8', Colors.white),
                        CalcButton('9', Colors.white),
                        CalcButton('x', Colors.pink),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('4', Colors.white),
                        CalcButton('5', Colors.white),
                        CalcButton('6', Colors.white),
                        CalcButton('-', Colors.pink),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('1', Colors.white),
                        CalcButton('2', Colors.white),
                        CalcButton('3', Colors.white),
                        CalcButton('+', Colors.pink),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton('0', Colors.white),
                        CalcButton('%', Colors.white),
                        CalcButton('.', Colors.white),
                        CalcButton('=', Colors.pink),
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
