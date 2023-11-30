import 'package:flutter/material.dart';

enum Gender{male,female}

class GenderButton extends StatelessWidget {
  const GenderButton({super.key, required this.gender, required this.isActive, required this.onTap});
  final Gender gender;
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding :const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xff1A1F38),
        borderRadius: BorderRadius.circular(10.0),
        border:Border.all(
          color:  isActive?Colors.pinkAccent:Colors.transparent,
        )
      ),
      child: InkWell(
        onTap:onTap,
        child: Column(
          children: [
            Icon(
             gender==Gender.male? Icons.male:Icons.female,
               color: isActive?Colors.white:Colors.grey,
                size: 60,
                ),
            SizedBox(height:8.0),
            Text(
              gender==Gender.male?"male":"female",
              style: TextStyle(
                color: isActive?Colors.white:Colors.grey,
                fontSize: 14,
              ),
            )
        ],),
      ),
    );
  }
}