import 'package:flutter/material.dart';
import 'package:instagram/models/custom_icon.dart';

class Publication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.account_box_outlined),            
              Padding(
                padding: const EdgeInsets.fromLTRB(4.0, 3.0, 0.0, 0.0),
                child: Text('sena.miguel_', style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ]
          ),
        ),

        Image.asset(
          'assets/images/java_script.png',
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomIcon(Icons.favorite_border_outlined),
                CustomIcon(Icons.comment_outlined),
                CustomIcon(Icons.send)
              ]
            ),

            CustomIcon(Icons.turned_in_not)
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Text(
                'sena.miguel_',
                style: TextStyle(fontWeight: FontWeight.bold)
              ),

              Text(
                'Teste'
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 8.0),
          child: Text('Ver todos os 564 comentários'),
        )
      ]
    );
  }
}