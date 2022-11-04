import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/trip.dart';
import '../screens/trip_detail_screen.dart';
import '../models/trip.dart';
class TripItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final int duration;
  final TripType tripType;
  final Season season;
  TripItem(
      {@required this.id,
   @required this.imageUrl,
    @required this.title,
    @required this.duration,
    @required this.season,
    @required this.tripType,
});
  String get seasonText{
    if(season== Season.Winter){
      return 'شتاء';
    }
    if(season== Season.Spring){
      return 'ربيع';
    }
    if(season== Season.Summer){
      return 'صيف';
    }
    if(season== Season.Autumn){
      return 'خريف';
    }
  }
  String get tripTypeText{
    switch(tripType){
      case TripType.Exploration:
        return 'استكشاف';
      case TripType.Recovery:
        return'نقاهة';
      case TripType.Activities:
        return 'أنشطة';
      case TripType.Therapy:
        return 'معالجة';

    }
  }
  void selectTrip(BuildContext context){
    Navigator.of(context).pushNamed(TripDetailsScreen.screenRoute, arguments: id );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation:7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(imageUrl,
                    height: 250 ,
                  width: double.infinity,
                  fit: BoxFit.cover),
                ) ,
                Container(
                  height: 250,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                        stops: [0.6,1]
                    )
                  ),
                  child: Text(title,
                  style: Theme.of(context).textTheme.headline6,
                  overflow: TextOverflow.fade,
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
                      Icon(Icons.today , color: Theme.of(context).accentColor,),
                    SizedBox(width:  6,
                    ),
                      Text('$duration أيام ')
                    ],
                  ),
                       Row(
                         children: [
                           Row(
                              children: [
                            Icon(Icons.wb_sunny , color: Theme.of(context).accentColor,),
                                SizedBox(width:  6,
                                   ),
                               Text(seasonText)
                                ],
                                  ),
                          Row(
                                 children: [
                               Row(

                                  children: [
                                Icon(Icons.family_restroom ,
                                    color: Theme.of(context).accentColor,),
                                 SizedBox(
                                   width:  6,
                                 ),
                                      Text(tripTypeText)
                                  ],
                                  )
                ],
              ),
            ])
          ]),
            )]),
      ),);
  }
}
