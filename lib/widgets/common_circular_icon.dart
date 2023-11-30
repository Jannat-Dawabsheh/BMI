import 'package:flutter/material.dart';

class CommonCircularIcon extends StatelessWidget {
  const CommonCircularIcon({super.key, required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
                    backgroundColor: Colors.grey[400],
                    radius: 25,
                    child: IconButton(
                      onPressed: onPressed,
                       icon: Icon(
                        icon, 
                        color:Colors.white,
                        )
                      ),
                  );
  }
}