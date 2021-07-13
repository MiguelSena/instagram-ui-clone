import 'package:flutter/material.dart';
import 'package:instagram/components/bottom_bar.dart';
import 'package:instagram/components/store_search.dart';
import 'package:instagram/models/custom_icon.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loja', style: TextStyle(fontWeight: FontWeight.bold)),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                CustomIcon(Icons.calendar_today),
                CustomIcon(Icons.dehaze),
              ]
            ),
          )
        ],
      ),

      body: StoreSearch(),
      
      bottomNavigationBar: BottomBar(),
    );
  }
}