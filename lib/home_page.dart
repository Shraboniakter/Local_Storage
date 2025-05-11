import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference our box
  final _myBox = Hive.box("mybox");
  // write data
  void writedata() {
    _myBox.put(3, 'good');
  }

  // read data
  void readdata() {
    print(_myBox.get(3));
  }

  //delete data
  void deletedata() {
    _myBox.delete(3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LocalStorage")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: writedata,
                child: Text("Write"),
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: readdata,
                child: Text("Read"),
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: deletedata,
                child: Text("Delete"),
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
