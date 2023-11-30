import 'package:bmi/screens/result_page.dart';
import 'package:bmi/widgets/common_info_card.dart';
import 'package:bmi/widgets/gender_button.dart';
import 'package:bmi/widgets/height_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   Gender _selectedGenger=Gender.male;
   int _height=120;
   int _selectedWeight=45;
   int _selectetdAge=16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.white,),
        title: const Center(
          child: Text(
            'BMI Calcutator',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              
            ),),
        ),

      ),
     body: Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column( 
              children: [
                Row(
                 children: [
                   Expanded(
                     child: 
                      GenderButton(
                        gender: Gender.male,
                        isActive: _selectedGenger==Gender.male,
                        onTap: (){
                          setState(() {
                             _selectedGenger=Gender.male;
                          });
                          
                        },
                        ),
                     
                   ),
                   const SizedBox(width: 10,),
                    Expanded(
                     child: 
                      GenderButton(
                        gender: Gender.female,
                         isActive: _selectedGenger==Gender.female,
                        onTap: (){
                          setState(() {
                             _selectedGenger=Gender.female;
                          });
                          
                        },
                        ),
                     
                   ),
                 ],
                ),
               
               const SizedBox(height: 16.0,),
               
               HeightCard(
                onChanged:(newValue){
                  _height=newValue;
                } ,
               ),
              
              const SizedBox(height: 16.0,),
               Row(
               
                children: [
                  
                  Expanded(child: CommonInfoCard(
                    title: "Weight".toUpperCase(),
                     onChanged:(newWeight){
                      _selectedWeight=newWeight;
                     },
                     initValue: 45,
                     )),
                  const SizedBox(width:10),
                  Expanded(child: CommonInfoCard(
                    title: "Age".toUpperCase(),
                     onChanged:(newAge){
                      _selectetdAge=newAge;
                     },
                     initValue: 16,
                     )),
                ],
                
              ),
                 const SizedBox(height: 16.0,),
             
              ],
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: (){
              final result=_CalculateBMI();
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ResultPage(bmi: result)));
            },
            color: Colors.pinkAccent,
            height: 100,
            child: const Text(
              'Calculate Your BMI',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            
            
            ),
        ),
      ],
      
      ),
    );
  }

  double _CalculateBMI(){
    final bmi=_selectedWeight/((_height/100)*(_height/100));
    return bmi;
  }
}
