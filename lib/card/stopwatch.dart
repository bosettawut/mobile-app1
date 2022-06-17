import 'dart:async';

import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  String greeting = "";
  late Timer _timer;
  @override
  void initState(){
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        greeting = "Periodic ${DateTime.now().second}";
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 70.0,
      ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0)
        ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(greeting,style: TextStyle(fontSize: 30),),
        FlatButton(onPressed: (){ _timer.cancel();}, child: Text("Stop"))
      ],
    ),
    );
  }
}



