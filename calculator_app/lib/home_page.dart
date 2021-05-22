import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: "0");

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 ~/ num2);
    });
  }

  void doClear() {
    setState(() {
      t1.text = '';
      t2.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Simple Calculator"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output: $sum",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 1",
              ),
            ),
            TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 2"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    return doAddition();
                  },
                  child: Text("+"),
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: doSub,
                  child: Text("-"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    return doMultiplication();
                  },
                  child: Text("x"),
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: doDiv,
                  child: Text("/"),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: Icon(
                    Icons.clear,
                    size: 20.0,
                  ),
                  color: Colors.red,
                  onPressed: doClear,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
