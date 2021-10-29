

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzato/sharedWidgets/cached_image.dart';
import 'package:pizzato/view/homeScreen/components/favourite_dish.dart';

class MiddleComponents extends ChangeNotifier
{
  Widget FavouriteList(BuildContext context )
  {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
       FavouriteDish(),
       FavouriteDish(),
       FavouriteDish(),
       FavouriteDish(),
      ],

    );
  }
}