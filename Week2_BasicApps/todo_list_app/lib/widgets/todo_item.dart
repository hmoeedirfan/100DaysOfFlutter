import 'package:flutter/material.dart';
import 'package:social_media_app_ui/constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: (){},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        // It will add icon to the start of tile
        leading: const Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        // It will create text in tile
        title: const Text(
          'Check Mail',
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        // It will add icon to end of tile
        trailing: Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          width: 35,
          height: 35,
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
