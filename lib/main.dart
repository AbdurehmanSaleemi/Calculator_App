// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

const String fntName = 'Montserrat';
String calculatorVariable = "0";
int updateVariable = 0;
int result = 0;
int counter = 0;

//four bools
bool multiply = false;
bool add = false;
bool subtract = false;
bool divide = false;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Calculator(),
    ));

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 50.0, 0, 0),
                child: Text(
                  'Calculator',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: fntName,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              height: 400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(50),
                child: Text(
                  calculatorVariable,
                  style: TextStyle(
                    fontFamily: fntName,
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    result = result + int.parse(calculatorVariable);
                    updateVariable = int.parse(calculatorVariable);
                    calculatorVariable = "0";
                    add = true;
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 1;
                      if (calculatorVariable == "0") {
                        calculatorVariable = "";
                      }
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 2;
                      if (calculatorVariable == "0") {
                        calculatorVariable = "";
                      }
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 3;
                      if (calculatorVariable == "0") {
                        calculatorVariable = "";
                      }
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    result = int.parse(calculatorVariable) - result;
                    updateVariable = int.parse(calculatorVariable);
                    calculatorVariable = "0";
                    subtract = true;
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 4;
                      if (calculatorVariable == "0") {
                        calculatorVariable = "";
                      }
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '4',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 5;
                      if (calculatorVariable == "0") {
                        calculatorVariable = "";
                      }
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '5',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 6;
                      if (calculatorVariable == "0") {
                        calculatorVariable = "";
                      }
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '6',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    result = 1;
                    result = (result / int.parse(calculatorVariable)).floor();
                    calculatorVariable = "0";
                    divide = true;
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '/',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 7;
                      if (calculatorVariable == "0") {
                        calculatorVariable = "";
                      }
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '7',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 8;
                      if (calculatorVariable == "0") {
                        calculatorVariable = "";
                      }
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '8',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 9;
                      if (calculatorVariable == "0") {
                        calculatorVariable = "";
                      }
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '9',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    result = 1; // setting result to 1 to avoid 0.
                    result = result * int.parse(calculatorVariable);
                    calculatorVariable = "0";
                    multiply = true;
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '*',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 0;
                      calculatorVariable = n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    'C',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int n = 0;
                      calculatorVariable = calculatorVariable + n.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color.fromRGBO(228, 228, 228, 1),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (add == true) {
                        result = result + int.parse(calculatorVariable);
                        add = false;
                      } else if (subtract == true) {
                        result = result - int.parse(calculatorVariable);
                        subtract = false;
                      } else if (multiply == true) {
                        result = result * int.parse(calculatorVariable);
                        multiply = false;
                      } else {
                        result =
                            (result / int.parse(calculatorVariable)).floor();
                        divide = false; // reset
                      }
                      calculatorVariable = result.toString();
                      result = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Colors.amber[500],
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    '=',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: fntName,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
