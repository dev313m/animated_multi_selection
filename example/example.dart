

import 'package:flutter/material.dart';
import 'package:alrasasi_animated_multi_select/alrasasi_animated_multi_select.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
  List<String> mainList = [
    "Not relevant",
    "Illegal",
    "Spam",
    "Offensive",
    "Uncivil",
    "select",
    'ont'
  ];

  List<String> selectedList = ["Not relevant", "Illegal", "Spam", 'ont'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(selectedList.join(" , ")),
            //
            MultiSelectChip(
                color: Colors.deepPurpleAccent,
                raduis: 100,
                mainList: this.mainList,
                onSelectionChanged: (selectedList) {
                  setState(() {
                    selectedList = selectedList;
                  });
                },
                initialSelectionList: selectedList,
                textStyle: TextStyle(color: Colors.purple, )
            ),

          ],
        ),
      ),
    );
  }
}

