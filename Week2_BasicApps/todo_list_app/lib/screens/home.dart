import 'package:flutter/material.dart';
import 'package:social_media_app_ui/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
            // Working on appbar  
            SizedBox(
              height: 40,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}
