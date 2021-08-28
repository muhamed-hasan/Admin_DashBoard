import 'package:flutter/material.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  _LargeScreenState createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.purple,
            )),
        Expanded(
            flex: 5,
            child: Container(
              color: Colors.indigo,
            )),
      ],
    );
  }
}
