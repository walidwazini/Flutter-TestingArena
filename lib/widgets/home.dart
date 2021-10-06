import 'package:flutter/material.dart';
import 'package:testing/widgets/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nameInput = TextEditingController();

  // var logoImage = 'assets/images/flutter-1.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basics 101'),
          // Using RGB-Opacity
          // backgroundColor: Color.fromRGBO(100, 40, 80, 1),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        'Welcome to Flutter',
                        style: TextStyle(color: Colors.red, fontSize: 30),
                      ),
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.white38)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Image.asset(logoImage,width: 260,),
                    Text('I hope you like it! '),
                    SizedBox(
                      height: 10,
                    ),
                    Text('This is first Flutter App'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('This is first item'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('This is second item'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 270, // Fixing the width of the textField
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter Your Name'),
                        controller: nameInput,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          print('Hello ${nameInput.text}');
                        },
                        child: Text('Click Here!')),

                    Text('Next Notes are here'),
                    SizedBox(
                      height: 8,
                    ),
                    Text('With Navigator,push() '),
                    FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ButtonsPage()));
                        },
                        child: Text(
                          'Button Page',
                          style: TextStyle(fontSize: 20.0),
                        )),
                    SizedBox(height: 12,),
                    Text('With Navigator.pushNamed() '),
                    RaisedButton(
                        child: Text('To Consultant Profile'),
                        onPressed: (){
                      Navigator.pushNamed(context, '1');
                    }),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, 'Testing');
                    }, child: Text('To Testing Page')),
                    SizedBox(height: 10,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor
                        ),
                        onPressed: (){
                      Navigator.pushNamed(context, 'InputPage');
                    }, child: Text('Input Page')),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, 'SwitchPage');
                    }, child: Text('Switch Page'))
                  ],
                ),
              )),
        ));
  }
}
