import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override 
  State createState()=> _QuizApp();
}
class _QuizApp extends State{
  List<Map> allQ = [
      {
        "question":"Who is the founder of Microsoft",
        "opts":["Steve Jobs","Bill Gates","Larry Page","Elon Musk"],
        "correct":1
      },
      {
        "question":"Who is the founder of Google",
        "opts":["Steve Jobs","Bill Gates","Larry Page","Elon Musk"],
        "correct":2
      },
      {
        "question":"Who is the founder of SpaceX",
        "opts":["Steve Jobs","Bill Gates","Larry Page","Elon Musk"],
        "correct":3
      },
      {
        "question":"Who is the founder of Apple",
        "opts":["Steve Jobs","Bill Gates","Larry Page","Elon Musk"],
        "correct":0
      },
      {
        "question":"Who is the founder of FaceBook",
        "opts":["Steve Jobs","Mark Zukerburg","Larry Page","Elon Musk"],
        "correct":1
      },
  ];
  int Qn=0;
  bool f11=false;
  bool f12=false;

  bool f21=false;
  bool f22=false;

  bool f31 =false;
  bool f32= false;

  bool f41=false;
  bool f42= false;

  bool show1=false;
  bool show2=false;
  bool show3=false;
  bool show4=false;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App", 
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.red,
          ),),
        centerTitle: true,
        backgroundColor: Colors.blue,  
      ),
      body: Column( 
        children: [
           const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              Text("Questions:${Qn+1}/${allQ.length}",
                     style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                     ),),
              
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 400,
            height:50,
            child: Text("   ${allQ[Qn]["question"]}",
               style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                     ),
               ),
           ),
             const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 400,
            height:50,
            child: ElevatedButton(
                onPressed: (){
                  
                  if(allQ[Qn]["correct"]==0){
                    f11=true;
                    
                  }else{
                    f12=true;
                  }
                  if(allQ[Qn]["correct"]==0){
                    show1=true;
                  }else if(allQ[Qn]["correct"]==1){
                    show2=true;
                  }else if(allQ[Qn]["correct"]==2){
                    show3=true;
                  }else{
                    show4=true;
                  }
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:(show1||f11||f12)==true?(show1||f11==true?Colors.green:Colors.red):Colors.white,
                ),
                child: Text(
                    allQ[Qn]["opts"][0],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                ),
            ),
           
          ),  


            const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 400,
            height:50,
            child: ElevatedButton(
                onPressed: (){
                  
                  if(allQ[Qn]["correct"]==1){
                    f21=true;
                  }else{
                    f22=true;
                  }


                   if(allQ[Qn]["correct"]==0){
                    show1=true;
                  }else if(allQ[Qn]["correct"]==1){
                    show2=true;
                  }else if(allQ[Qn]["correct"]==2){
                    show3=true;
                  }else{
                    show4=true;
                  }
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:(f21||f22||show2)==true?(f21||show2==true?Colors.green:Colors.red):Colors.white,
                ),
                child: Text(
                    allQ[Qn]["opts"][1],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                ),
            ),
           
          ),


            const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 400,
            height:50,
            child: ElevatedButton(
                onPressed: (){
                  
                  if(allQ[Qn]["correct"]==2){
                    f31=true;
                  }else{
                    f32=true;
                  }

                   if(allQ[Qn]["correct"]==0){
                    show1=true;
                  }else if(allQ[Qn]["correct"]==1){
                    show2=true;
                  }else if(allQ[Qn]["correct"]==2){
                    show3=true;
                  }else{
                    show4=true;
                  }
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:(f31||f32||show3)==true?(f31||show3==true?Colors.green:Colors.red):Colors.white,
                ),
                child: Text(
                    allQ[Qn]["opts"][2],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                ),
            ),
           
          ),


            const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 400,
            height:50,
            child: ElevatedButton(
                onPressed: (){
                  
                  if(allQ[Qn]["correct"]==3){
                    f41=true;
                  }else{
                    f42=true;
                  }

                   if(allQ[Qn]["correct"]==0){
                    show1=true;
                  }else if(allQ[Qn]["correct"]==1){
                    show2=true;
                  }else if(allQ[Qn]["correct"]==2){
                    show3=true;
                  }else{
                    show4=true;
                  }
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:(f41||f42||show4)==true?(f41||show4==true?Colors.green:Colors.red):Colors.white,
                ),
                child: Text(
                    allQ[Qn]["opts"][3],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                ),
            ),
           
          ),


           
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          f11=f12=f21=f22=f31=f32=f41=f42=show1=show2=show3=show4=false;
          
          if(Qn<allQ.length-1){
          Qn++;
        }
        setState(() {});
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.forward,
          color: Colors.orange,
        ),
        
      ),
    );
  }
}