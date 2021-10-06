import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key? key}) : super(key: key);

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _value = false;
  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switching'),
      ),
      body: Column(
        children: [ Row( children: [
          Switch(value: _value, onChanged: _onChanged, activeColor: Colors.green,),
          Text(
            'Value : $_value',
            style: TextStyle(fontSize: 20.0),
          ),
        ],)],
      ),
    );
  }
}
