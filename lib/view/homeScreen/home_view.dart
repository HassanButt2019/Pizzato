



import 'package:flutter/material.dart';
import 'package:pizzato/view/homeScreen/components/headers.dart';
import 'package:pizzato/view/homeScreen/components/middle_components.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child:Column(
          children: [
            Headers().appBar(context),
            Headers().HeaderText(),
            Container(
              height: 100,
            //  color: Colors.black,
              child: Headers().HeaderMenu(context)),


    Text("Favourite Dishes".toUpperCase() , style:const TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize:25)), 

            Container(
              height: 250,
              child: MiddleComponents().FavouriteList(context))
         

          ],
        )
      ),
    );
  }
}