import 'package:flutter/material.dart';

class TestingPage extends StatefulWidget {

  @override
  _TestingPageState createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  double _numberFrom = 0;
  var descrTECs = <TextEditingController>[];
  var fixedSCs = [true]; //storing the switch values
  var cards = <Card>[]; // storing the list of cards with forms

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Measures Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Measures Converter'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Measures Converter'),
              TextField(
                onChanged: (text){
                  var rv = double.tryParse(text);
                  if (rv != null) {
                    setState(() {
                      _numberFrom = rv;
                    });
                  }
                },
              ),
              Text((_numberFrom == null) ? '' : _numberFrom.toString())
            ],
          ),
        ),
      ),
    );
  }
}
