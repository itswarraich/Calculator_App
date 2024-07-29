import 'package:chapter_eight/constant.dart';
import 'package:chapter_eight/documents/document_screen.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userInput='';
  var answer='';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Calculator"),
          backgroundColor: greyColor,
          centerTitle: true,),
          backgroundColor: Colors.black,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),)),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),)),
                    ],),
                  ),
                ),


                Expanded(
                  flex: 2,
                  child: Column(children: [
                    Row(children: [
                      Umar(title: "AC", onPress: (){
                        userInput='';
                        answer= '';
                        setState(() {

                        });
                      },),
                      Umar(title: "+/-", onPress: (){
                        userInput +='+/-';
                        setState(() {

                        });
                      },),
                      Umar(title: "%", onPress: (){
                        userInput +='%';
                        setState(() {

                        });
                      },),
                      Umar(title: "/", color: Color(0xffffa00a),onPress: (){
                        userInput +='/';
                        setState(() {

                        });
                      },),


                    ],),
                    Row(children: [
                      Umar(title: "7", onPress: (){
                        userInput +='7';
                        setState(() {

                        });
                      },),
                      Umar(title: "8", onPress: (){
                        userInput +='8';
                        setState(() {

                        });
                      },),
                      Umar(title: "9", onPress: (){
                        userInput +='9';
                        setState(() {

                        });
                      },),
                      Umar(title: "x", color: Color(0xffffa00a),onPress: (){
                        userInput +='*';
                        setState(() {

                        });
                      },),


                    ],),
                    Row(children: [
                      Umar(title: "4", onPress: (){
                        userInput +='4';
                        setState(() {

                        });
                        setState(() {

                        });
                      },),
                      Umar(title: "5", onPress: (){
                        userInput +='5';
                        setState(() {

                        });
                      },),
                      Umar(title: "6", onPress: (){
                        userInput +='6';
                        setState(() {

                        });
                      },),
                      Umar(title: "-", color: Color(0xffffa00a),onPress: (){
                        userInput +='-';
                        setState(() {

                        });
                      },),


                    ],),
                    Row(children: [
                      Umar(title: "1", onPress: (){
                        userInput +='1';
                        setState(() {

                        });
                        setState(() {

                        });
                      },),
                      Umar(title: "2", onPress: (){
                        userInput +='2';
                        setState(() {

                        });
                      },),
                      Umar(title: "3", onPress: (){
                        userInput +='3';
                        setState(() {

                        });
                      },),
                      Umar(title: "+", color: Color(0xffffa00a),onPress: (){
                        userInput +='+';
                        setState(() {

                        });
                      },),


                    ],),
                    Row(children: [
                      Umar(title: "0", onPress: (){
                        userInput +='0';
                        setState(() {

                        });
                        setState(() {

                        });
                      },),
                      Umar(title: ".", onPress: (){
                        userInput +='.';
                        setState(() {

                        });
                      },),
                      Umar(title: "DEL", onPress: (){
                        userInput=userInput.substring(0, userInput.length-1);
                        setState(() {

                        });
                      },),
                      Umar(title: "=", color: Color(0xffffa00a),onPress: (){
                        equalPress();
                        setState(() {

                        });
                      },),




                    ],),
                  ],),
                ),






              ],),
          ),
        ),
      ),

    );
  }

  void equalPress() {
    String finalUserInput = userInput;

    // Handle '%' by replacing it with '/100' for percentage calculations
    finalUserInput = finalUserInput.replaceAll('x', '*');
    finalUserInput = finalUserInput.replaceAll('%', '/100');


    try {
      Parser p = Parser();
      Expression exp = p.parse(finalUserInput);
      ContextModel contextModel = ContextModel();

      double eval = exp.evaluate(EvaluationType.REAL, contextModel);
      answer = eval.toString();
    } catch (e) {
      answer = "Error";
    }
  }
}





// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 10),
//   child: Container(
//     height: 40,
//     width: 500,
//     child: Center(child: Text("Sign Up", style: textstyle,)),
//     decoration: BoxDecoration(
//       color: Colors.amber,
//       borderRadius: BorderRadius.circular(40),
//     ),
//   ),
// ),

