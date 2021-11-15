import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinKitScreen extends StatelessWidget {
  //const SpinKitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            SpinKitRotatingCircle(color: Colors.orange,),
            SpinKitRotatingPlain(color: Colors.amber,),
          ],),
          SpinKitChasingDots(color: Colors.red,)
        ],
      ),
    );
  }
}
