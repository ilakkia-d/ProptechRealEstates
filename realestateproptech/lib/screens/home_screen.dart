import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestateproptech/widgets/search_field.dart';
import 'package:realestateproptech/widgets/select_category.dart';
import 'package:realestateproptech/widgets/suggestions_list.dart';

import '../models/items_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        toolbarHeight: 80.0,
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue.shade600,
            ),
            Text(
              "chennai,TamilNadu",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.amberAccent,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchField(),
              SelectCategory(),
              SizedBox(
                height: 20.0,
              ),
              SuggestionList("Recommendation for you", Item.recommendation),
              SizedBox(
                height: 20.0,
              ),
              SuggestionList("Nearby you", Item.nearby),
            ],
          ),
        ),
      ),
      //lets now create the navigation button
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.amberAccent,
        selectedItemColor: Colors.blue.shade600,
        unselectedItemColor: Colors.grey.shade600,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: "Profiles"),
        ],
      ),
    );
  }
}
