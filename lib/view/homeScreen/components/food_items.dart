import 'package:flutter/material.dart';

class FoodItems extends StatefulWidget {
  const FoodItems({Key? key, this.items}) : super(key: key);
  final String? items;

  @override
  _FoodItemsState createState() => _FoodItemsState();
}

class _FoodItemsState extends State<FoodItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15, right: 10 , bottom: 10),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.redAccent, blurRadius: 5.0)],
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            color: Colors.white,
          ),
          height: 35.0,
          width: 100,
          child: Center(
            child: Text(
              widget.items!,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
