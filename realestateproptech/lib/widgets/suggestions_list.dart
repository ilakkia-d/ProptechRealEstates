import 'package:flutter/material.dart';
import 'package:realestateproptech/models/items_model.dart';
import 'package:realestateproptech/screens/details_screen.dart';
import 'package:realestateproptech/widgets/house_card.dart';

class SuggestionList extends StatefulWidget {
  SuggestionList(this.title, this.items, {super.key});
  String? title;
  List<Item> items;

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              TextButton(
                onPressed: () {},
                child: Text("See all"),
              ),
            ],
          ),
          SizedBox(
            height: 120,
          ),
          Container(
            height: 340.0,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.items.length,
              itemBuilder: (context, index) =>
                  ItemCard(widget.items[index], () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(widget.items[index])));
              }),
            ),
          ),
        ],
      ),
    );
  }
}
