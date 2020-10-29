import 'package:flutter/material.dart';
import 'package:mds_little_bit/widget/a_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('a little bit of every tings')),
      body: SafeArea(
        // SafeArea pour l'encoche
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AButton("Random Cat"),
          ],
        ),
      ),
    );
  }
}
