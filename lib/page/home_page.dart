import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mds_little_bit/page/random_cat_page.dart';
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
            AButton("Async/Awaits", () {
              print("Async/Awaits");
            }),
            AButton("CacheManager", () {
              print("CacheManager");
            }),
            AButton(
              "Random Cat",
              () {
                print("'miaou'");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) {
                    return RandomCatPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
