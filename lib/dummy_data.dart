import 'package:flutter/material.dart';
import './models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(
      id: 'c1',
      title: 'Weekly Sale',
      color: Colors.purple,
      image: 'https://bijouxhair.com/tim/pc_may/prize1.png'),
  Category(
      id: 'c2',
      title: 'Whats New',
      color: Colors.red,
      image: 'https://bijouxhair.com/tim/pc_may/prize2.png'),
  Category(
      id: 'c3',
      title: 'Video Gallery',
      color: Colors.orange,
      image: 'https://bijouxhair.com/tim/pc_may/prize3.png'),
  Category(
      id: 'c4',
      title: 'Marketing Event',
      color: Colors.amber,
      image: 'https://bijouxhair.com/tim/pc_may/prize4.png'),
];

const Content_data = [
  Contents(
    id: 'm2',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Toast Hawaii',
    spec: 'Affordability.Affordable',
    price: 'Complexity.Simple',
    image: 'https://bijouxhair.com/tim/weekly/20220509-03.jpg',
    desc: 'Description',
  ),
  Contents(
    id: 'm3',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    spec: 'Affordability.Affordable',
    price: 'Complexity.Simple',
    image: 'https://bijouxhair.com/tim/weekly/20220509-03.jpg',
    desc: 'Description',
  ),
  Contents(
    id: 'm4',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Toast Hawaii',
    spec: 'Affordability.Affordable',
    price: 'Complexity.Simple',
    image: 'https://bijouxhair.com/tim/weekly/20220509-03.jpg',
    desc: 'Description',
  ),
  Contents(
    id: 'm5',
    categories: [
      'c4',
    ],
    title: 'Toast Hawaii',
    spec: 'Affordability.Affordable',
    price: 'Complexity.Simple',
    image: 'https://bijouxhair.com/tim/weekly/20220509-03.jpg',
    desc: 'Description',
  ),
  Contents(
    id: 'm6',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Toast Hawaii',
    spec: 'Affordability.Affordable',
    price: 'Complexity.Simple',
    image: 'https://bijouxhair.com/tim/weekly/20220509-03.jpg',
    desc: 'Description',
  ),
  Contents(
    id: 'm7',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Toast Hawaii',
    spec: 'Affordability.Affordable',
    price: 'Complexity.Simple',
    image: 'https://bijouxhair.com/tim/weekly/20220509-03.jpg',
    desc: 'Description',
  ),
];
