import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/category_meals.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final Color color;
  const CategoryItem(this.id, this.title, this.image, this.color);

  void selectedCategory(context) {
    // Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    //   return CategoryMealsScreen(id, title);
    // }));
    Navigator.pushNamed(context, CategoryMealsScreen.routeName,
        arguments: CategoryItem(id, title, image, color));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedCategory(context),
      splashColor: Colors.amber,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Image.network(
          image,
          height: 350,
          width: 200,
          fit: BoxFit.cover,
        ),
        margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
