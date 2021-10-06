import 'package:flutter/material.dart';
import 'package:testing/widgets/pop_menu_button.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  var city = ['Toronto', 'Boston', 'Mexico', 'London'];
  var firstcity = 'Toronto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // FAB must be only in scaffold
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.phone),
      ),
      appBar: AppBar(
        title: Text('Buttons Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            Text('Hello'),
            Text('Hello 2'),
            TextButton(onPressed: () {}, child: Text("Hello")),
            SizedBox(
              height: 10,
            ),
            IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {},
            ),
            Text('Sound'),
            SizedBox(
              height: 10,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                    ),
                    onPressed: () {},
                    child: Text('Flight')),
                FlatButton(onPressed: () {}, child: Text('Bar 2')),
                OutlinedButton(onPressed: () {}, child: Text('Bar 3')),
                IconButton(
                  icon: Icon(Icons.wash),
                  tooltip: 'Increase volume by 10',
                  onPressed: () {},
                ),
              ],
            ),
            OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => PapMenuButtonPage()
              )
              );
            }, child: Text('to Pop Menu Buton Page')),
            SizedBox(height: 8,),
            RaisedButton(
                color: Colors.amberAccent,
                child: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.pop(context);
                }),
            ElevatedButton.icon(onPressed: (){},
                style: ElevatedButton.styleFrom(primary: Colors.tealAccent),
                icon: Icon(Icons.search),
                label: Text(' Hello ')),
          ],
        ),
      ),
    );
  }
}
