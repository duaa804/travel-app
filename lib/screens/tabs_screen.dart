//import 'package:flutter/material.dart';
//import 'package:travel_app/screens/favorites_screen.dart';
//
//import 'catogaries_screen.dart';
//class TabsScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return DefaultTabController(
//      length: 2,
//      child: Scaffold(
//        appBar: AppBar(
//          title: Text('دليل سياحي'),
//          bottom: TabBar(
//            tabs: [
//              Tab(
//                icon: Icon(Icons.dashboard),
//                text: 'التصنيفات',
//              ),
//              Tab(
//                icon: Icon(Icons.star),
//                text: 'المفضلة',
//              )
//            ],
//          ),
//        ),
//        body: TabBarView(
//          children: [
//            CatogariesScreen(),
//            FavoritesScreen(),
//          ],
//        ),
//      ),
//    );
//  }
//}
import 'package:flutter/material.dart';
import 'package:travel_app/screens/catogaries_screen.dart';
import 'package:travel_app/screens/favorites_screen.dart';
import '../widgets/app_drawer.dart';
class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }
  int _selectedScreenIndex =0;
  final List<Map<String ,Object>> _screens =[
    {
      'Screen':CatogariesScreen(),
      'Title': 'تصنيفات الرحلة',

    },
    {
      'Screen':FavoritesScreen(),
      'Title':'الرحلات المفضلة'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_screens[_selectedScreenIndex]['Title']),),
      drawer:AppDrawer() ,
      body: _screens[_selectedScreenIndex]['Screen'],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon (Icons.dashboard),
          label: 'التصنيفات'),
          BottomNavigationBarItem(icon: Icon(Icons.star),
          label: 'المفضلة')

        ],
      ),
    );
  }
}
