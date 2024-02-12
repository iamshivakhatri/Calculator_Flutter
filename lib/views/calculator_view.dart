import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: [
          // Calculator Display
          DisplayOne(hint: "Enter a first number"),
          SizedBox(
            height: 20.0,
          ),  
          DisplayOne(hint: "Enter a second number",),
          SizedBox(
            height: 20.0,
          ),  
          Text("0", 
          style: TextStyle(
            fontSize: 30.0,
        
          ),
          ),

          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: null,
                child: Icon(CupertinoIcons.add),
              ),

              FloatingActionButton(
                onPressed: null,
                child: Icon(CupertinoIcons.minus),
              ),

              FloatingActionButton(
                onPressed: null,
                child: Icon(CupertinoIcons.multiply),
              ),

              FloatingActionButton(
                onPressed: null,
                child: Icon(CupertinoIcons.divide),
              )
            ]
          )
      
        ],
      ),
    );
  }
}

class DisplayOne extends StatelessWidget {
  const DisplayOne({
    super.key,
    this.hint = "Enter a number",
  });
  
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
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