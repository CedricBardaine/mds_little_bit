import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mds_little_bit/api/meow_api.dart';
import 'package:mds_little_bit/model/meow_model.dart';

class RandomCatPage extends StatefulWidget {
  @override
  _RandomCatPageState createState() => _RandomCatPageState();
}

class _RandomCatPageState extends State<RandomCatPage> {
  MeowModel _meowModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Cat 🐱"),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async {
              print('refesh');
              MeowModel newMeowModel = await getMeow();

              setState(() {
                _meowModel = newMeowModel;
              });

              print(_meowModel.file);
            },
          ),
        ],
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    if (_meowModel == null) {
      return Center(
        child: Text('snif snif, no cat 😿'),
      );
    } else {
      return CachedNetworkImage(imageUrl: _meowModel.file);
    }
  }
}
