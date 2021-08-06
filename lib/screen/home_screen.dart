import 'package:calculator/widget/button_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  'Output',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                ButtonWidget('7'),
                ButtonWidget('8'),
                ButtonWidget('9'),
                ButtonWidget('+'),
              ],
            ),
            Row(
              children: [
                ButtonWidget('4'),
                ButtonWidget('5'),
                ButtonWidget('6'),
                ButtonWidget('-'),
              ],
            ),
            Row(
              children: [
                ButtonWidget('1'),
                ButtonWidget('2'),
                ButtonWidget('3'),
                ButtonWidget('x'),
              ],
            ),
            Row(
              children: [
                ButtonWidget('C'),
                ButtonWidget('0'),
                ButtonWidget('='),
                ButtonWidget('/'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
