// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizzato/view/homeScreen/components/food_items.dart';

class Headers extends ChangeNotifier
{
  Widget appBar(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(top:30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.userAlt)),
         Row(
           children:const [
             Icon(FontAwesomeIcons.locationArrow),
             SizedBox(width: 10,),
             Text("New Place Area",style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold , color: Colors.grey),),
           ],
         ),

          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.search , color: Colors.grey,)),

        ],
      ),
    );
  }


  Widget HeaderText()
  {
    return Container(
      constraints:const BoxConstraints(
        maxWidth:300.0,
      ),
      child: RichText(text:const TextSpan(
        text: "What Would You Like ",
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 29,
          color: Colors.black
        ),
        children: <TextSpan>[
        TextSpan(
        text: "To Eat ?",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: Colors.red
        )
        
      )
        ]
        
      )),
    );
  }


  Widget HeaderMenu(BuildContext context)
  {
    return Center(
      child: Container(
        height: 60,
       // color: Colors.red,

      
        child: ListView(
          scrollDirection: Axis.horizontal,
          // ignore: prefer_const_literals_to_create_immutables
          children:<FoodItems> [
            FoodItems(items: "All Foods",),
             FoodItems(items: "New Pizza",),
              FoodItems(items: "Old Pizza",),
              FoodItems(items: "All Foods",),
             FoodItems(items: "New Pizza",),
              FoodItems(items: "Old Pizza",),

          ],
        ),
      ),
    );
  }
}