
import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title ;
  final String desc ;
  TaskCardWidget({required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[Text(title,
          style: const TextStyle(
            color: Color(0xFF211551),
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
          Padding(padding: const EdgeInsets.only(
            top: 10.0,
          ),
            child: Text(
              desc,
              style: const TextStyle(
                fontSize: 16.0,
                color: Color(0xFF868290),
                height: 1.5,
              ),
            ),
          ),
        ]
      ),
    );
  }
}
