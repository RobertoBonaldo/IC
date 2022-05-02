import 'dart:html';

import 'package:flutter/material.dart';
import 'package:teste1/shared/cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double media = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('pagina principal')),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: media,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(right: media * 0.15),
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.add_box,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    label: Text(
                      'ADD',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 21,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, index) => Cards()),
            ),
          ),
        ],
      ),
    );
  }
}







//Bebam agua
//comentarios: se um dia a gente usar
// barra de navegação
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.access_alarm_sharp),
      //       label: 'item 1',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.access_alarm_sharp),
      //       label: 'item 2',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.access_alarm_sharp),
      //       label: 'item 3',
      //     ),
      //   ],
      // ),