import 'package:flutter/material.dart';
import 'package:travel_app/screens/category_trips_screens.dart';
import '../screens/category_trips_screens.dart';
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imagUrl;

  const CategoryItem(this.title ,this.imagUrl , this.id);

  void selectCategoray(BuildContext ctx){
    Navigator.of(ctx).pushNamed(CategoryTripsScreen.screenRout,
      arguments: {
      'id':id,
        'title':title
      });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() =>selectCategoray(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          Image.network(imagUrl,
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(

            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),

          )
        ],
      ),
    );
  }
}
