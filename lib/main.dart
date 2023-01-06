import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var num1, num2, sum;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  void _add() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState(() {
      sum = num1 + num2;
    });
  }

  void sub() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState(() {
      sum = num1 - num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator app"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "введите число"),
            controller: t1,
            keyboardType: TextInputType.number,
          ),
          TextField(
            decoration: InputDecoration(hintText: "введите число"),
            controller: t2,
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
            onPressed: _add,
            child: Text("+"),
          ),
          ElevatedButton(
            onPressed: sub,
            child: Text("-"),
          ),
          Text(
            "=",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
            "${sum == null ? 0 : sum}",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
