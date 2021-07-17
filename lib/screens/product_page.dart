import 'package:flutter/material.dart';
import 'package:instagram/components/bottom_bar.dart';
import 'package:instagram/models/custom_icon.dart';

class ProductPage extends StatelessWidget {
  final List itens = [Pictures(), Title()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loja'), 
        elevation: 0,

        actions: <Widget>[
          IconButton(
            icon: CustomIcon(Icons.more_vert),
            onPressed: () {}
          )
        ]
      ),

      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return itens[index];
        }
      ),

      bottomNavigationBar: BottomBar()
    );
  }
}

class Pictures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/java_script.png'),
          );
        }
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    CustomIcon(Icons.account_box_outlined),
                    Text('_sena.miguel')
                  ]
                ),
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.turned_in_not),
                      onPressed: () {}
                    ),

                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {}
                    )
                  ],
                )
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'JavaScript',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              )
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              r'R$ 599,99',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
              )
            )
          )
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'Ver no site',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold
                  )
                )
              ),
            ),
          )
        )
      ]
    );
  }
}