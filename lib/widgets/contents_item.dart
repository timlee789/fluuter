import 'dart:ui';

import 'package:flutter/material.dart';
import '../screens/details_screen.dart';

class ContentsItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String desc;
  final String spec;

  ContentsItem(
      {required this.id,
      required this.title,
      required this.image,
      required this.desc,
      required this.spec});

  void selectItem(BuildContext context) {
    Navigator.of(context).pushNamed(DetailsScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectItem(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(image,
                    height: 700, width: double.infinity, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: Container(
                  width: 220,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      width: 10,
                    ),
                    Text(desc),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      width: 10,
                    ),
                    Text(spec),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
