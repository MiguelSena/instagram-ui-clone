import 'package:flutter/material.dart';
import 'package:instagram/components/bottom_bar.dart';
import 'package:instagram/components/store/product.dart';
import 'package:instagram/components/store/store_search.dart';
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
          Row(
              children: [
                CustomIcon(Icons.calendar_today, onClick: () {}),
                CustomIcon(Icons.dehaze, onClick: () {}),
              ]
            ),
        ],
      ),

      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return index == 0 ? StoreSearch() : Product();
        }
      ),
      
      bottomNavigationBar: BottomBar(),
    );
  }
}