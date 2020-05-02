import 'package:flutter/material.dart' as Material;

class Text extends Material.StatelessWidget {

  final String text;

  Text(this.text);

  @override
  Material.Widget build(Material.BuildContext context) {

    return Material.Container(
      margin: Material.EdgeInsets.only(top: 16, bottom: 16),
      child: Material.Text(
        text,
        style: Material.TextStyle(
            fontSize: 34
        ),
      ),
    );
  }

}