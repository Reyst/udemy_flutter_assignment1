import 'package:flutter/material.dart';

import './text.dart' as Custom;
import './text_control.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {

  static const _LENGTH = 10;
  var _index = 0;

  String _obtainCurrentText() => '|'.padLeft(_index + 1, '-').padRight(_LENGTH, '-');

  void _showNextText() {
    setState(() => _index = (_index + 1) % _LENGTH);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questionare"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Custom.Text(_obtainCurrentText()),
              TextControl(
                caption: "Next >>",
                onPressed: _showNextText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
