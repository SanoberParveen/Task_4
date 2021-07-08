//import 'package:Task2/main.dart';
import 'package:flutter/material.dart';
//import './secondpage.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Thank you for submitting the task!",
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
              ),
            ),
            Icon(
              Icons.done,
              color: Colors.green,
              size: 30,
            ),
            Text(
              "Click below to go back to main screen",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            //Icon(Icons.exit_to_app_rounded)
            InkWell(
              child:
                  //Text("Click Below to go back to main screen"),
                  Icon(
                Icons.exit_to_app_rounded,
                color: Colors.black,
                size: 50,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
