import 'package:flutter/material.dart';

import '../screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.amber[400],
            child: Text('Cooking up', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Theme.of(context).primaryColor
            ),),
          ),
          SizedBox(height: 20,),
          ListTile(
            leading: Icon(Icons.restaurant, size:26),
            title: Text('Meals'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size:26),
            title: Text('Filters'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}