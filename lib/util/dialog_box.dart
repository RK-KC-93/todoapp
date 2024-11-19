import 'package:flutter/material.dart';
import 'package:todoapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'add new task'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //save button
                MyButton(text: 'Save', onPressed: onSave),
                const SizedBox(
                  width: 8,
                ),
                //cancel button
                MyButton(text: 'cancel', onPressed: onCancel),
                const SizedBox(
                  width: 8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
