import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text('Text Input', style: Theme.of(context).textTheme.headline3,),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 30),
                  labelText: 'Label Text',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(),
                  )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 48.0),
                hintText: 'Hint Text ',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 48.0),
                hintText: 'with Hint Text ',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0)
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 48.0),
                hintText: 'With bigger type area.. ',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0)
                ),
              ),
              maxLines: 4,
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: hidePassword,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 48.0),
                hintText: 'With obsecure text ',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0)
                ),

                // InkWell make the icon click-able
                suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(Icons.visibility),
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 48.0),
                hintText: 'With Prefix icon ',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0)
                ),
                // InkWell make the icon click-able
                prefixIcon: Icon(Icons.email)
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _togglePasswordView() {
    //   if (hidePassword == true){
    //     hidePassword = false;
    //   }
    //   else {
    //     hidePassword = true;
    //   }
    //   setState(() {});
    // }
    hidePassword = !hidePassword;
    setState(() {

    });
  }
}
