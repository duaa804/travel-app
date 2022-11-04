import 'package:flutter/material.dart';
import 'package:travel_app/screens/filters_screen.dart';
class AppDrawer extends StatelessWidget {
  Widget bulidListTile(String title, IconData icon, Function onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color:Colors.blue,
      ),
      title: Text(title,style: TextStyle(
          fontFamily: 'ElMessiri',
          fontSize: 24,
          fontWeight: FontWeight.bold
      ),),
      onTap: onTapLink,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).accentColor,
            child: Text('دليلك السياحي',style: Theme.of(context).textTheme.headline6,),
          ),
          SizedBox(
            height: 20,
          ),
          bulidListTile('الرحلات',
              Icons.card_travel,
                  (){Navigator.of(context).pushNamed('/');}),
          bulidListTile('الفلترة',
              Icons.filter_list,
                  (){Navigator.of(context).pushNamed(FiltersScreen.screenRoute);}),

        ]),
    );
  }
}
