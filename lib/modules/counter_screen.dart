import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter with Cubit"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {},
              heroTag: "MinusFAB",
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "1",
              style: TextStyle(
                fontSize: 62.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {},
              heroTag: "PlusFAB",
            ),
          ],
        ),
      ),
    );
  }
}
