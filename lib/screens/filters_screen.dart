import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_drawer.dart';
class FiltersScreen extends StatefulWidget {
  static const screenRoute ='/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _isInSummer = false;
  var _isInWinter = false;
  var _isForFamily = false;

  Widget bulidSwitchListTile(String title,String subtitle,var currentValue, Function upDateValue){
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: currentValue,
        onChanged: upDateValue,

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text('الفلترة'),),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Expanded(
              child: ListView(
                children: [
                  bulidSwitchListTile(
                      'الرحلات الصيفية',
                      'إظهار الرحلات الصيفية',
                      _isInSummer,
                          (newValue) {
                  setState(() {
                    _isInSummer = newValue;
                  });
                }),
                  bulidSwitchListTile(
                      'الرحلات الشتوية',
                      'إظهار الرحلات الشتوية',
                      _isInWinter,
                          (newValue) {
                        setState(() {
                          _isInWinter= newValue;
                        });
                      }),
                  bulidSwitchListTile(
                      'للعائلات',
                      'إظهار الرحلات التي للعائلات فقط',
                      _isForFamily,
                          (newValue) {
                        setState(() {
                          _isForFamily = newValue;
                        });
                      })],
              )),

        ],
      )

    );
  }
}
