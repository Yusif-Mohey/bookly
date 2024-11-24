import 'package:flutter/material.dart';

class CustomBookImageLoadingIndicator extends StatelessWidget {
  const CustomBookImageLoadingIndicator({super.key, required this.size});
  final double size;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: size,
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
