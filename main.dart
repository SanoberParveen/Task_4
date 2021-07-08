import 'package:Task2/secondpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Task 4'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // var widget2 = widget;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              color: Colors.yellowAccent.shade50,
              child: Text(
                "Welcome To New Project",
                style: TextStyle(
                    color: Colors.black, fontSize: 20, decorationThickness: 5),
              ),
            ),
            ListTile(
              title: Text(
                "Login",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),
              //tileColor: Colors.purple,
              trailing: Icon(
                Icons.login,
                color: Colors.purple.shade200,
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.purple.shade200,
            ),
            ListTile(
              title: Text(
                "Help",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),

              ///tileColor: Colors.purple,
              trailing: Icon(
                Icons.help,
                color: Colors.purple.shade200,
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.purple.shade200,
            ),
            ListTile(
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),
              //tileColor: Colors.purple,
              trailing: Icon(
                Icons.login,
                color: Colors.purple.shade200,
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.purple.shade200,
            ),
            ListTile(
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),
              //tileColor: Colors.purple,
              trailing: Icon(
                Icons.person,
                color: Colors.purple.shade200,
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.purple.shade200,
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
              ),
              //tileColor: Colors.purple,
              trailing: Icon(
                Icons.logout,
                color: Colors.purple.shade200,
              ),
            ),
            // TextButton(
            //   style: TextButton.styleFrom(
            //     primary: Colors.lightBlue,
            //     onSurface: Colors.yellow,
            //   ),
            //   onPressed: () {},
            //   child: Text(
            //     "Submit",
            //     style: TextStyle(color: Colors.purple),
            //   ),
            // ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          // mainAxisSize: MainAxisSize.min,

          children: [
            Container(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text("These are the icons : ",
                      style: TextStyle(color: Colors.black87, fontSize: 20)),
                ],
              ),
            ),
            Row(
              children: [
                Center(
                  child: Icon(
                    Icons.airplanemode_on,
                    color: Colors.grey,
                    size: 50,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.home_filled,
                    color: Colors.green,
                    size: 50,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.bluetooth,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Text(
                  "Images inserted are: ",
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(
                      "https://flutter.dev/images/catalog-widget-placeholder.png"),
                ),
                Expanded(
                  flex: 1,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Android_Studio_Icon_%282014-2019%29.svg/1200px-Android_Studio_Icon_%282014-2019%29.svg.png"),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(20),
              height: 130,
              //width: 50,
              color: Colors.red,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Hey User! how are you?",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Icon(
                      Icons.people_alt_rounded,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
            //),
            Column(
              children: [
                SizedBox(
                  height: 30,
                  width: 150,
                  //child: Card(child: Text('Hello World!')),
                  child: RaisedButton(
                    onPressed: null,
                    color: Colors.blue.shade50,
                    child: Text("Finish",
                        style: TextStyle(color: Colors.black87, fontSize: 20)),
                  ),
                ),
                ElevatedButton(
                    //style: ButtonStyle(backgroundColor: Colors.white54)

                    onPressed: null,
                    child: Text(
                      "Click here to submit",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ))
              ],
            ),

            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) {
                              return SecondScreen();
                            }));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
