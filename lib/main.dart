import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(child: Text('Ask ME Anything')),

        ),
        body: BallPage(),
      ),
    )
  );
}
class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(onPressed: (){
            setState(() {
              ballNum=1 + Random().nextInt(5);
            });
        }, child: Image.asset('images/ball$ballNum.png')),
      ),
    );
  }
}
