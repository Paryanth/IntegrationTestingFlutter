import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleForm(),
    );
  }
}

class SimpleForm extends StatefulWidget {
  @override
  _SimpleFormState createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  String _displayText = '';

  final TextEditingController _controller = TextEditingController();

  void _submit() {
    setState(() {
      _displayText = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Integration Test Demo')),
      body: Column(
        children: [
          TextField(
            key: Key('inputField'),
            controller: _controller,
          ),
          ElevatedButton(
            key: Key('submitButton'),
            onPressed: _submit,
            child: Text('Submit'),
          ),
          Text(_displayText, key: Key('outputText')),
        ],
      ),
    );
  }
}