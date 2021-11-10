import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final void Function() textControlFunction;
  final String buttonText = "Text changing button";
  const TextControl({Key? key, required this.textControlFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(buttonText),
        onPressed: textControlFunction,
        style: ButtonStyle(
          splashFactory: InkRipple.splashFactory,
          alignment: Alignment.center,
          backgroundColor: MaterialStateProperty.all(Colors.pink),
        ),
      ),
      height: 100,
      width: 200,
      alignment: Alignment.topCenter,
      margin: EdgeInsets.all(10),
    );
  }
}
