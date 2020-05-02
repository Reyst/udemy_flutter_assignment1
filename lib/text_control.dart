import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {

  final String caption;
  final Function onPressed;

  const TextControl({Key key, this.caption, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(caption),
      onPressed: onPressed,
    );
  }
}
