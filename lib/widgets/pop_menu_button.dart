import 'package:flutter/material.dart';

class PapMenuButtonPage extends StatefulWidget {
  const PapMenuButtonPage({Key? key}) : super(key: key);

  @override
  _PapMenuButtonPageState createState() => _PapMenuButtonPageState();
}

class TextsMenu {
  static const items = <String>[settings, share];

  static const String settings = "Settings";
  static const String share = 'Share';
}

class _PapMenuButtonPageState extends State<PapMenuButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopMenuButton'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case TextsMenu.settings:
                  break;
                case TextsMenu.share:
                  break;
              }
            },
            itemBuilder: (context) =>
                TextsMenu.items.map((item) =>
                    PopupMenuItem<String>(
                      value: item,
                      child: Text(item),
                    ))
                    .toList(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Welcome to Adroid ATC'),
          ],
        ),
      ),
    );

  }
}
