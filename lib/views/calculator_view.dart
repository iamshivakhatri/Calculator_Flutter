import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num result = 0;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: [
          // Calculator Display
          CalculatorDisplay(hint: "Enter a first number", controller: displayOneController),
          const SizedBox(
            height: 20.0,
          ),  
          CalculatorDisplay(hint: "Enter a second number", controller: displayTwoController),
          const SizedBox(
            height: 20.0,
          ),  
          Text(
             result.toString(),
            style: const TextStyle(
            fontSize: 30.0,
        
          ),
          ),

          const Spacer(),
            FloatingActionButton(
              onPressed: (){
                setState(() {
                  displayOneController.text = "";
                  displayTwoController.text = "";
                  result = 0;
                });
              },
              child: const Text("Clear")
              ),
              const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    x = int.parse(displayOneController.text);
                    y = int.parse(displayTwoController.text);
                    result = x + y;
                  });
                
                },
                child: const Icon(CupertinoIcons.add),
              ),

              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    x = int.parse(displayOneController.text);
                    y = int.parse(displayTwoController.text);
                    result = x - y;
                  });
                },
                child: const Icon(CupertinoIcons.minus),
              ),

              FloatingActionButton(
                onPressed: (){
                  setState((){
                    x = int.parse(displayOneController.text);
                    y = int.parse(displayTwoController.text);
                    result = x * y;
                  });
                },
                child: const Icon(CupertinoIcons.multiply),
              ),

              FloatingActionButton(
                onPressed: (){
                  setState((){
                    x = int.parse(displayOneController.text);
                    y = int.parse(displayTwoController.text);
                    result = x / y;
                  });
                },
                child: const Icon(CupertinoIcons.divide),
              )
            ]
          )
      
        ],
      ),
    );
  }
}

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({
    super.key,
    this.hint = "Enter a number",
    required this.controller,
  });
  
  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}