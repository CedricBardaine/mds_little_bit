import 'package:flutter/material.dart';

class AButton extends StatefulWidget {
  final String title;
  final Function callback;

  AButton(this.title, this.callback);

  @override
  _AButtonState createState() => _AButtonState();
}

class _AButtonState extends State<AButton> {
  Color _color = Colors.lightGreen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 48.0,
            decoration: BoxDecoration(
                color: _color, borderRadius: BorderRadius.circular(999)),
            child: Center(
              child: Text(
                widget.title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        onTapDown: (value) {
          setState(() {
            _color = Colors.lightGreen.withOpacity(0.6);
          });
        },
        onTapUp: (value) {
          setState(() {
            _color = Colors.lightGreen.withOpacity(1);
          });

          widget.callback();
        },
        onTapCancel: () {
          setState(() {
            _color = Colors.lightGreen;
          });
        });
  }
}
