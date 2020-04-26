import 'package:flutter/material.dart';
import 'package:coffee_cup/constants.dart';

class CoffeeMenu extends StatefulWidget {
  @override
  _CoffeeMenuState createState() => _CoffeeMenuState();
}

class _CoffeeMenuState extends State<CoffeeMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 100.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle:true,
              title: Text(
                'Choose your drink',
                style: kLableTextStyle,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text("List item $index"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
