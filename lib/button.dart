import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button with Leading Image'),
        ),
        body: Center(
          child: MyButton(),
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _isPressed ? Icon(Icons.favorite) : Icon(Icons.favorite_border), // Change leading icon when pressed
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed; // Toggle the button state
        });
      },
      tooltip: _isPressed ? 'Remove from favorites' : 'Add to favorites',
    );
  }
}
