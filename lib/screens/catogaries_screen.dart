import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/category_item.dart';
class CatogariesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7/8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map((categoryData) => CategoryItem(
            categoryData.title ,
            categoryData.imageUrl ,
            categoryData.id),
        ).toList(),
      ),
    );
  }
}
