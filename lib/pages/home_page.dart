// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter_fitspo/util/BrowsingFollowing.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitspo/util/photo_tile2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../util/photo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List browsingFollowing = [
    [
      'Browsing',
      true,
    ],
    [
      'Following',
      true,
    ]
  ];
  void browsingFollowingSelected() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          gap: 8,
          onTabChange: (index) {
            print(index);
          },
          tabBackgroundColor: Colors.grey.shade800,
          padding: EdgeInsets.all(16),
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(icon: Icons.favorite_border, text: 'Likes'),
            GButton(icon: Icons.add),
            GButton(icon: Icons.search, text: 'Search'),
            GButton(icon: Icons.person, text: 'Profile'),
          ],
        ),
      ),
      body: Column(children: [
        //Find your Unique Style
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "PENIS PENIS PENIS PENIS",
            style: GoogleFonts.bebasNeue(
              fontSize: 38,
            ),
          ),
        ),
        SizedBox(height: 15),

        //Browsing / Following
        Container(
            height: 50,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              BrowsingFollowing(
                browsingFollowing: 'Browsing',
                isSelected: true,
                onTap: browsingFollowingSelected,
              ),
              BrowsingFollowing(
                browsingFollowing: 'Following',
                isSelected: false,
                onTap: browsingFollowingSelected,
              ),
            ])),
        SizedBox(height: 10),
        //Listview Horizontal
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 200,
            children: [
              PhotoTile(),
              PhotoTile1(),
              PhotoTile(),
              PhotoTile1(),
              PhotoTile(),
              PhotoTile1(),
              PhotoTile(),
              PhotoTile1(),
            ],
          ),
        ),
      ]),
    );
  }
}
