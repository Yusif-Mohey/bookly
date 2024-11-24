// import 'package:bookly/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.image, required this.size});
  final String image;
  final double size;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: image,
          // placeholder: (context, url) =>
          //     CircularProgressIndicator(), //chatGPT suggestion
          errorWidget: (context, url, error) =>
              Icon(Icons.error), //chatGPT suggestion
        ),
      ),
    );
  }
}
