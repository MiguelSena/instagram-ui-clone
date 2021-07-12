import 'package:flutter/material.dart';
import 'package:instagram/components/bottom_bar.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loja', style: TextStyle(fontWeight: FontWeight.bold)),
        automaticallyImplyLeading: false
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}