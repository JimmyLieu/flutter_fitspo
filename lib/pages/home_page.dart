// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/photo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ]),
      body: Column(children: [
        //Find your Unique Style
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Find the best style for you",
            style: GoogleFonts.bebasNeue(
              fontSize: 38,
            ),
          ),
        ),
        SizedBox(height: 15),

        //SearchBar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your fit...',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ))),
        ),
        SizedBox(height: 20),
        //Browsing / Following
        Padding(
          padding: const EdgeInsets.only(left: 120.0),
          child: Container(
              height: 25,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Text(
                  'Browsing',
                  style: GoogleFonts.bebasNeue(fontSize: 20),
                ),
                Text(' | ', style: GoogleFonts.bebasNeue(fontSize: 20)),
                Text('Following',
                    style: GoogleFonts.bebasNeue(
                        fontSize: 20, color: Colors.grey.shade600))
              ])),
        ),
        SizedBox(height: 10),
        //Listview Horizontal
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              PhotoTile(),
              PhotoTile(),
              PhotoTile(),
              PhotoTile(),
            ],
          ),
        ),
      ]),
    );
  }
}
