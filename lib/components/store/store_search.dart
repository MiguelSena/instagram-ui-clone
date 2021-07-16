import 'package:flutter/material.dart';
import 'package:instagram/models/search_box.dart';

class StoreSearch extends StatelessWidget {
  final List texts = ['Lojas', 'Seleção do editor', 'Coleções', 'Guias', 'Vídeos'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(),
        
        SizedBox(
          height: 60.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return RoundedButton(texts[index]);
            }
          ),
        )
      ],
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;

  RoundedButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[300],
            ),

            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0
              )
            ),
          ),
        ),
      ),
    );
  }
}