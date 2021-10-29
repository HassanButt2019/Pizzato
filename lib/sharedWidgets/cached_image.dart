
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedImage extends StatelessWidget {
  CachedImage({this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: imageUrl!,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error , color: Colors.red,),
     );
  }
}