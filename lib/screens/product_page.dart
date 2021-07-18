import 'package:flutter/material.dart';
import 'package:instagram/components/bottom_bar.dart';
import 'package:instagram/models/custom_icon.dart';

class ProductPage extends StatelessWidget {
  final List itens = [Pictures(), Title(), Details(), More()];
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

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.007,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
        ),

        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Detalhes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)), 
                IconButton(
                  icon: Icon(Icons.arrow_downward),
                  onPressed: () {}
                )
              ]
            ),
          ),
        ),

        Container(
          height: MediaQuery.of(context).size.height * 0.007,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
        ),
      ]
    );
  }
}

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Mais desta loja', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                InkWell(
                  onTap: () {},
                  child: Text('Ver mais', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.blue))
                )
              ]
            ),
          ),
        ),

        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                MoreImages(),
                MoreImages(),
              ]
            ),

            Row(
              children: <Widget>[
                MoreImages(),
                MoreImages(),
              ]
            ),
          ],
        )
      ]
    );
  }
}

class MoreImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double size = (MediaQuery.of(context).size.width / 2) - 16.0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),

            height: size,
            width: size,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network('https://cdn.discordapp.com/attachments/787057736818360375/866151024489922580/java_script.png')
            )
          ),

          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'JavaScript',
                  style: TextStyle(fontSize: 16.0)
                ),
                IconButton(
                  icon: Icon(Icons.turned_in_not),
                  onPressed: () {}
                )
              ]
            )
          ),

          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(r'R$ 599,99', style: TextStyle(color: Colors.blue, fontSize: 16.0))
          )
        ]
      ),
    );
  }
}