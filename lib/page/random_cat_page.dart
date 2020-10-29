import 'package:flutter/material.dart';
import 'package:mds_little_bit/api/meow_api.dart';
import 'package:mds_little_bit/model/meow_model.dart';

class RandomCatPage extends StatefulWidget {
  @override
  _RandomCatPageState createState() => _RandomCatPageState();
}

class _RandomCatPageState extends State<RandomCatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Random Cat 🐱")),
      body: IconButton(
        icon: Icon(Icons.refresh),
        onPressed: () async {
          print('refesh');
          MeowModel meowModel = await getMeow();

          print(meowModel.file);
        },
      ),
    );
  }
}
