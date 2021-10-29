import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizzato/sharedWidgets/cached_image.dart';

class FavouriteDish extends StatefulWidget {
  const FavouriteDish({ Key? key }) : super(key: key);

  @override
  _FavouriteDishState createState() => _FavouriteDishState();
}

class _FavouriteDishState extends State<FavouriteDish> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.only(left:10.0 , right: 10),
          child: GestureDetector(
            onTap: (){},
            child: Container(
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 150.0,
                          width: 200,
                         child:CachedImage(imageUrl: 'https://image.shutterstock.com/image-photo/pizza-isolated-on-white-background-260nw-766731970.jpg',) ,
                        ),
                        Positioned(
                          right: 10,
                          top: 12,
                          child: IconButton(onPressed: (){
                            setState(() {
                              isFavourite = !isFavourite;
                            });
                          }, icon:Icon(isFavourite? EvaIcons.heart:EvaIcons.heartOutline , color: Colors.red,) ),
                        )

                      ],
                    ),
         const    Padding(
                 padding:  EdgeInsets.only(top:8.0),
                 child:     Text("Italian Pizza" 
                      ,style:TextStyle(fontSize: 15 , fontWeight: FontWeight.w300 , color:Colors.black)),
                 ),
                        const    Padding(
                 padding:  EdgeInsets.only(top:4.0),
                 child:     Text("Category Name" 
                      ,style:TextStyle(fontSize: 12 , fontWeight: FontWeight.w600 , color:Colors.cyan)),
                 ),

                 Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.center,
                      
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   //    crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Icon(EvaIcons.star , color: Colors.yellow.shade700,),
                                        const Padding(
                     padding:  EdgeInsets.only(top:8.0),
                     child:     Text("5" 
                          ,style:TextStyle(fontSize: 12 , fontWeight: FontWeight.w300 , color:Colors.grey)),
                     ),


                       ],
                     ),
                     SizedBox(width: 30.0,),
                     Row(
                    ///   mainAxisAlignment: MainAxisAlignment.spaceAround,
                       //crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Icon(FontAwesomeIcons.rupeeSign , color: Colors.yellow.shade700,),
                                        const Padding(
                     padding:  EdgeInsets.only(top:8.0),
                     child:     Text("400" 
                          ,style:TextStyle(fontSize: 12 , fontWeight: FontWeight.w300 , color:Colors.grey)),
                     ),


                       ],
                     ),
                   ],
                 )


                  ],
                ),
              ),
            ),

          ),
        );
  }
}