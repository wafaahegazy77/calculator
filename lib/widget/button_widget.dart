import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String name;

  const ButtonWidget(this.name, {Key? key}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  int? firstNum;
  int? secondNum;
  String textDisplay = '';
  String? res;
  String? operation;
  void btnClicked(name) {
    if (name == 'C') {
      textDisplay = '';
      firstNum = 0;
      secondNum = 0;
    } else if (name == '*' || name == '+' || name == '-' || name == '/') {
      firstNum = int.parse(textDisplay);
      res = '';
      operation = name;
    } else if (name == '=') {
      secondNum = int.parse(textDisplay);
      if (operation == '+') {
        res = (firstNum! + secondNum!).toString();
      } else if (operation == 'x') {
        res = (firstNum! * secondNum!).toString();
      } else if (operation == '-') {
        res = (firstNum! - secondNum!).toString();
      } else if (operation == '/') {
        res = (firstNum! / secondNum!).toString();
      } else {
        res = int.parse(textDisplay + name).toString();
      }
      setState(() {
        textDisplay = res!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: OutlinedButton(
          onPressed: () => btnClicked({widget.name}),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              '${widget.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff555555),
              ),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey.shade200,
          ),
        ),
      ),
    );
  }
}
