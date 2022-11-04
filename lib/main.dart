import 'package:flutter/material.dart';
import 'package:travel_app/screens/category_trips_screens.dart';
import 'package:travel_app/screens/catogaries_screen.dart';
import 'package:travel_app/screens/filters_screen.dart';
import 'package:travel_app/screens/tabs_screen.dart';
import 'package:travel_app/screens/trip_detail_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      title: 'Localizations Sample App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code
      ],
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
//          fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline5: TextStyle(
            color: Colors.blue,
            fontSize: 24,
//          fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,
          ),
            headline6: TextStyle(
              color: Colors.white,
              fontSize: 26,
//             fontFamily: 'ElMessiri',
//              fontWeight: FontWeight.bold,
            )
        ),
      ),
      //home: CatogariesScreen(),
        initialRoute: '/',
        routes: {
        '/' : (ctx) => TabsScreen(),
          CategoryTripsScreen.screenRout:(ctx) => CategoryTripsScreen(),
          TripDetailsScreen.screenRoute:(ctx) => TripDetailsScreen(),
          FiltersScreen.screenRoute: (ctx)=> FiltersScreen(),
    },

    );
  }
}

