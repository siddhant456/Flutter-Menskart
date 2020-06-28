import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['All', 'Shoes', 'Watches', 'Trousers'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: kDefaultPadding - 10,
                right: index == categories.length - 1 ? kDefaultPadding : 0),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
                color: index == selectedIndex
                    ? kPrimaryColor.withOpacity(0.8)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(6)),
            child: Text(
              categories[index],
              style: TextStyle(color: Colors.black.withOpacity(0.8)),
            ),
          ),
        ),
      ),
    );
  }
}
