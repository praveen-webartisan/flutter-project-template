import 'package:flutter/material.dart';

import '../../config.dart';

Drawer CustomNavBar({currPage: false, title: null}) {
  return Drawer(
    child: Container(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[

          Flexible(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[

                DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: CustomTheme.gradient,
                    color: CustomTheme.onGradient,
                  ),
                  child: Container(
                    child: Text(title ?? APP_NAME, style: TextStyle(color: CustomTheme.onGradient, fontSize: 24,),),
                  ),
                ),

                // Menu Items goes here...
                ListTile(
                  selected: currPage == 'dashboard',
                  leading: Icon(Icons.dashboard),
                  title: Text('Dashboard'),
                ),
                ListTile(
                  selected: currPage == 'listings',
                  leading: Icon(Icons.list_alt),
                  title: Text('Listings'),
                ),

              ],
            ),
          ),

          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[

                  // Bottom Aligned Menu Items goes here...
                  ListTile(
                    selected: currPage == 'settings',
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Logout'),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    ),
  );
}