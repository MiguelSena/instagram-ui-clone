import 'package:flutter/material.dart';
import 'package:instagram/screens/product_page.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double size = (MediaQuery.of(context).size.width / 2) - 2.0;
    return Row(
      children: [
        Picture(size, onClick: () => _page(context)),
        Picture(size, onClick: () => _page(context)),
      ],
    );
  }
}

class Picture extends StatelessWidget {
  final double size;
  final Function onClick;
  Picture(this.size, {@required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.5, 1.0, 1.0, 1.0),
        child: Container(
          height: size,
          width: size,
          child: Image.asset('assets/images/java_script.png'),
        ),
      ),
    );
  }
}

void _page (BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductPage()));
}