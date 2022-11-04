import 'package:flutter/material.dart';
import 'package:travel_app/widgets/trip_item.dart';
import '../app_data.dart';
import '../widgets/trip_item.dart';
class CategoryTripsScreen extends StatelessWidget {
  static const screenRout = '/category-trips';
//  final String categoryId;
//  final String categoryTitle;
//
//  const CategoryTripsScreen( this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgument = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final filteredTrips = Trips_data.where((trip){
      return trip.categories.contains(categoryId);
    }
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),

      ),
      body: ListView.builder(
            itemBuilder: (ctx , index){
              return TripItem(
                id: filteredTrips[index].id,
                  imageUrl: filteredTrips[index].imageUrl,
                  title: filteredTrips[index].title,
                  duration: filteredTrips[index].duration,
                  season:  filteredTrips[index].season,
                  tripType:  filteredTrips[index].tripType);
            },
            itemCount:filteredTrips.length ,

          )
      );


  }
}
