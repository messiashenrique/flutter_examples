import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  _showSnackBar() {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text('Text copied'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: SelectableText(
          'Click to copy the text',
          onTap: () {
            Clipboard.setData(
              ClipboardData(text: 'SelectableText Widget'),
            );
            _showSnackBar();
          },
        ),
      ),
    );
  }
}
