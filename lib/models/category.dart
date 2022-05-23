import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String image;
  final Color color;

  const Category(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

class Contents {
  final String id;
  final List<String> categories;
  final String title;
  final String image;
  final String spec;
  final String price;
  final String desc;

  const Contents({
    required this.id,
    required this.categories,
    required this.title,
    required this.image,
    required this.spec,
    required this.price,
    required this.desc,
  });
}
