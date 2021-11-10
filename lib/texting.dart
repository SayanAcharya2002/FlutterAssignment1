import 'package:flutter/material.dart';

class Texting extends StatelessWidget {
  final String textData;
  const Texting({Key? key, required this.textData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        textData,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          backgroundColor: Colors.blue,
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 30,
          fontStyle: FontStyle.italic,
        ),
      ),
      height: 100,
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
    );
  }
}
