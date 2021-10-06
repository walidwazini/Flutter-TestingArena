import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';

class ConsultantProfilePage extends StatefulWidget {
  // const ConsultantProfilePage({Key? key}) : super(key: key);

  @override
  _ConsultantProfilePageState createState() => _ConsultantProfilePageState();
}

class _ConsultantProfilePageState extends State<ConsultantProfilePage> {
  var profileImage = 'assets/profile-1.jpg';
  var consultantName = 'Sarah bt Azman';
  var specialize = ['Hello1', 'Hello2', 'Hello'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Consultant'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profileImage),
                radius: 100,
              ),
              // Image.asset(profileImage, height: 250,),
              Divider(
                height: 12,
              ),
              Text(
                consultantName,
                style: TextStyle(fontSize: 45),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Specialization'),
              Row(
                children: [
                  InputChip(
                    label: Text(specialize[0]),
                    onPressed: () {},
                  ),
                  Chip(
                    label: Text(specialize[1]),
                  ),
                ],
              ),
              Wrap(
                spacing: 5.0,
                runSpacing: 3,

              )
            ],
          ),
        ),
      ),
    );
  }
}
