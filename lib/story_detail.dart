import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story_Detail extends StatelessWidget {
  const Story_Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          color: Colors.yellow,
          height: 100,
          width: 100,
          child: const Icon(Icons.verified),
        ),
      )),
    );
  }
}
