import 'package:flutter/material.dart';

class pagina2 extends StatelessWidget {
  const pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('pagina 2')),
      ),
      body: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 21,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 350,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8),
        itemBuilder: (context, index) => Container(
          color: Colors.green,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/bang.png'),
                    maxRadius: 100,
                  ),
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
          ),
        ),
      ),
    );
  }
}
