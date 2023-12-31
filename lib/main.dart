import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: const Center(
          child: Text('Dicee', style: TextStyle(color: Colors.white))),
      backgroundColor: Colors.red,
    ),
    body: DicePage(),
  )));
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    leftDiceNumber = 5;
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
              onPressed: (){
                print('Left button got pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png')),
        ),
        Expanded(
          child: TextButton(
              onPressed: (){
                print('Right button got pressed');
              },
              child: Image.asset('images/dice1.png')),
        ),
      ]),
    );
  }

}


