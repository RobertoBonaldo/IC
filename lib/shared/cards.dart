import 'package:flutter/material.dart';
import 'package:teste1/pages/pagina2.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pagina2(),
          ),
        );
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: CircleAvatar(
                  backgroundImage: AssetImage('images/bang.png'),
                  maxRadius: 65),
            ),
            Text(
              'DATA',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
        color: Colors.blue,
      ),
    );
  }
}
