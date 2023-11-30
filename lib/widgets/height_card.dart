import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  const HeightCard({super.key, required this.onChanged});
final void Function (int newValue)onChanged;
  @override
  State<HeightCard> createState() => _HeightCardState();
}
  

class _HeightCardState extends State<HeightCard> {
  int _height=120;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color(0xff1A1F38),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Column(
            children: [
               Text(
                "Height".toUpperCase(),
                style: const TextStyle(
                  color:Colors.grey,
                  fontSize: 16,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                Text(
                "$_height",
                style:const TextStyle(
                  color:Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 5,),
              const Text(
                "cm",
                style: TextStyle(
                  color:Colors.grey,
                  fontSize: 16,
                ),
              ),
              
                ],
              ),
              const SizedBox(height: 10,),

              Slider(
                min: 80,
                max:220,
                activeColor: Colors.lightBlueAccent,
                value: _height.toDouble(), 
                onChanged:(newValue){
                  setState(() {
                    _height=newValue.toInt();
                  });
                  widget.onChanged(_height);
                } 

              )
            ],
        ),
      ),
    );
  }
}