import 'package:flutter/material.dart';

import 'common_circular_icon.dart';

class CommonInfoCard extends StatefulWidget {
  const CommonInfoCard({super.key, required this.title, required this.onChanged, this.initValue});
  final String title;
  final void Function(int value)onChanged;
  final int? initValue;
  @override
  State<CommonInfoCard> createState() => _CommonInfoCardState();
}

class _CommonInfoCardState extends State<CommonInfoCard> {
  late int _value;
  @override
  void initState() {
   
    super.initState();
    _value=widget.initValue??20;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xff1A1F38),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
               Text(
                  widget.title,
                  style: const TextStyle(
                    color:Colors.grey,
                    fontSize: 16,
                  ),
                ),
             const SizedBox(height: 10,),
              Text(
                "$_value",
                style:const TextStyle(
                  color:Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  CommonCircularIcon(
                    onPressed: (){
                      if(_value>1){
                      setState(() {
                          _value--;
                        });
                        widget.onChanged(_value);
                      }else{
                         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("You Can't Select negative value")));
                      }
                        
                        }, 
                    icon: Icons.remove,),

                  const Spacer(),
                  CommonCircularIcon(
                    onPressed: (){
                      setState(() {
                          _value++;
                        });
                         widget.onChanged(_value);
                        }, 
                    icon: Icons.add,),
                 

              ],)
        ],
      ),
    );
  }
}