import 'package:flutter/material.dart';
import 'package:instagram/screens/home.dart';
import 'package:instagram/screens/store.dart';

class BottomBar extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      alignment: Alignment.center,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BottomButton(Icons.home, onClick: () => _home(context)),
            BottomButton(Icons.search, onClick: () {}),
            BottomButton(Icons.movie_outlined, onClick: () {}),
            BottomButton(Icons.card_travel, onClick: () => _store(context)),
            BottomButton(Icons.account_box_outlined, onClick: () {})
          ],
        )
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  final IconData _icon;
  final Function onClick;

  BottomButton(this._icon, {this.onClick});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(_icon),
      onPressed: onClick
    );
  }
}

void _store (BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Store()));
}

void _home (BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
}