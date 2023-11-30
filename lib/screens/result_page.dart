import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.bmi});

  final double bmi;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(
          child:  Text(
            'Your Result',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
            children: [
              Container(
                padding:const EdgeInsets.all(24),
                width: double.infinity,
               decoration: BoxDecoration(
                  color: const Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Text(
                      _getBMIStatus(),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                         color:_getBMIStatusColor(),
                      ),
                      ),
                    const SizedBox(height:24),
                      Text(
                      widget.bmi.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                         color:Colors.white,
                      ),
                      ),

                      const SizedBox(height:20),
                      Text(
                     "${_getBMIStatus()} BMI Range:",
                      style: const TextStyle(
                        fontSize: 16,
                         color:Colors.grey,
                      ),
                      ),

                      const SizedBox(height:20),
                      Text(
                     _getBMIRange(),
                      style: const TextStyle(
                        fontSize: 18,
                         color:Colors.white,
                         fontWeight: FontWeight.w700,
                      ),
                      ),

                      const SizedBox(height:20),
                      Text(
                     _getBmiMessage(),
                      style: const TextStyle(
                        fontSize: 20,
                         color:Colors.white,
                         fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      ),
                      


                    
                  ],
                ),
              ),
            ],
        ),
      ),
     
    );
  }
  String _getBMIStatus(){
    if(widget.bmi>0 && widget.bmi<=16){
      return "Severe thinness";
    }else if(widget.bmi>16 && widget.bmi<=17){
      return "Moderate thinness";
    }else if(widget.bmi>17 && widget.bmi<=18.5){
      return "Mild thinness";
    }
    else if(widget.bmi>18.5 && widget.bmi<=25){
      return "Normal";
    }
    else if(widget.bmi>25 && widget.bmi<=30){
      return "Overweight";
    }
    else if(widget.bmi>30 && widget.bmi<=35){
      return "Obese Class I";
    }
      else{
      return "Obese Class II";
    }
  }

  Color _getBMIStatusColor(){
    if(widget.bmi>0 && widget.bmi<=17){
      return Colors.red;
    }
    else if(widget.bmi>17 && widget.bmi<=18.5){
      return Colors.yellowAccent;
    }
    else if(widget.bmi>18.5 && widget.bmi<=25){
      return Colors.green;
    }
    else if(widget.bmi>25 && widget.bmi<=30){
      return Colors.yellowAccent;
    }
    else if(widget.bmi>30 ){
      return Colors.red;
    } 
     return Colors.red;  
  }

  String _getBMIRange(){
    if(widget.bmi>0 && widget.bmi<=16){
      return "1 - 16 kg/m2";
    }else if(widget.bmi>16 && widget.bmi<=17){
      return "16.1 - 17 kg/m2";
    }else if(widget.bmi>17 && widget.bmi<=18.5){
      return "17.1 - 18.5 kg/m2";
    }
    else if(widget.bmi>18.5 && widget.bmi<=25){
      return "18.6 - 25 kg/m2";
    }
    else if(widget.bmi>25 && widget.bmi<=30){
      return "25.1 - 30 kg/m2";
    }
    else if(widget.bmi>30 && widget.bmi<=35){
      return "30.1 - 35 kg/m2";
    }
      else{
      return "Greater than 35 kg/m2";
    }
  }

   String _getBmiMessage() {
    if(widget.bmi > 0 && widget.bmi <= 18.5) {
      return "You should eat more :)";
    } else if (widget.bmi > 18.5 && widget.bmi <= 25) {
      return "You have normal body Good Job!";
    } else  {
      return "you should stop eating :(";
    }
  }
}