import 'dart:developer';
import 'package:flutter/material.dart';

class StatefulDemo extends StatefulWidget {
  const StatefulDemo({Key? key}) : super(key: key);

  @override
  State<StatefulDemo> createState() => _StatefulDemoState();
}

class _StatefulDemoState extends State<StatefulDemo> {
  int add = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$add",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      add++;
                    },
                  );
                  log(add.toString());
                },
                child: Text("add"))
          ],
        ),
      ),
    );
  }
}
