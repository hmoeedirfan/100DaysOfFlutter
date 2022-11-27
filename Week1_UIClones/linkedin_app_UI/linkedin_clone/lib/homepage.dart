// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202329),
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          height: 1000,
          color: Colors.green,
          child: Column(
            
          ),
        ),
      ),
    );
  }
}
