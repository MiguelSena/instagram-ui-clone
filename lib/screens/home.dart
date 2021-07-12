import 'package:flutter/material.dart';
import 'package:instagram/components/bottom_bar.dart';
import 'package:instagram/components/publication_list.dart';
import 'package:instagram/components/top_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
            height: 45.0,
            child: Image.asset('assets/images/ig.png')
          ),

        actions: <Widget>[
          TopBar()
        ]
      ),

      body: PublicationList(),

      bottomNavigationBar: BottomBar()
    );
  }
}