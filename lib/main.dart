import 'package:flutter/material.dart';

import 'package:highlight_text/highlight_text.dart';
import 'package:spring_button/spring_button.dart';
import 'package:flui/flui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  String text = "";
  final myController = TextEditingController();
  bool _loading = false;

  void _incrementCounter() {
    setState(() {
      _loading = true;
      print(myController.text);
      text = myController.text;
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: TextField(
              controller: myController,
              maxLines: 10,
              decoration: InputDecoration(labelText: "enter your texte here "),
            ),
          ),

          // after u will
          Wrap(
            children: <Widget>[
              Container(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Tooltip(
                message: "MY DATA",
                child: Container(
                  color: Colors.red,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                color: Colors.yellow,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          FLLoadingButton(
            child: Text('Lunch'),
            color: Color(0xFF0F4C81),
            disabledColor: Color(0xFF0F4C81),
            indicatorColor: Colors.white,
            textColor: Colors.white,
            loading: _loading,
            minWidth: 100,
            indicatorOnly: true,
            onPressed: () {
              _incrementCounter();
              Future.delayed(
                  Duration(seconds: 3), () => setState(() => _loading = false));
            },
          )
        ],
      ),
    );
  }
}
