import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../widgets/contents_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categorymeals';
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as CategoryItem;
    final contentsData = Content_data.where(
        (element) => element.categories.contains(routeArgs.id)).toList();
    return Scaffold(
      appBar: AppBar(title: Text(routeArgs.title)),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ContentsItem(
              id: contentsData[index].id,
              title: contentsData[index].title,
              image: contentsData[index].image,
              desc: contentsData[index].desc,
              spec: contentsData[index].spec);
        },
        itemCount: contentsData.length,
      ),
    );
  }
}
