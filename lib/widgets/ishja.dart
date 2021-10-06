import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Testing2Page extends StatefulWidget {
  @override
  _Testing2PageState createState() => _Testing2PageState();
}

class _Testing2PageState extends State<Testing2Page> {
  var descrTECs = <TextEditingController>[];
  var fixedSCs = [true]; //storing the switch values
  var cards = <Card>[]; // storing the list of cards with forms

  SizedBox createTextField(String placeholderStr, double fieldWidth) {
    var tFieldController = TextEditingController();
    switch (placeholderStr) { //switching placeholder to assign text controller to correct controller list
      case "Description":
        descrTECs.add(tFieldController);
        break;
    }
    return SizedBox(width: fieldWidth, height: 25,
      child: CupertinoTextField(
        placeholder: placeholderStr,
        controller: tFieldController,
      ),
    );
  }

  SizedBox createSwitch(int pos) {
    return SizedBox(width: 50, height: 25,
        child: CupertinoSwitch(
          value: fixedSCs[pos],
          onChanged: (value) {
            setState(() => fixedSCs[pos] = value); // value is stored in fixedSCs but not rendered upon rebuild
          },
        )
    );
  }

  Card createCard() {
    return Card(
      child: Row(children: <Widget>[
        Text('#p${cards.length + 1}:'),
        Column(
          children: <Widget>[
            createSwitch(cards.length),
            createTextField("Description", 70.0),
          ],),
      ],),
    );
  }

  @override
  void initState() {
    super.initState();
    cards.add(createCard()); // first card created upon start
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder( // List Builder to show all cards
                itemCount: cards.length,
                itemBuilder: (BuildContext context, int index) {
                  return cards[index];
                },
              ),
            ),
            RaisedButton(
              child: Text('add new'),
              onPressed: () => setState(() {
                fixedSCs.add(true); // bool element created to create next card
                cards.add(createCard());}  // create next card
              ),
            ),
          ],
        ),
      ),);
  }
}