import 'package:flutter/material.dart';

class CustomTextLoadingIndicator extends StatelessWidget {
  const CustomTextLoadingIndicator(
      {super.key, required this.width, required this.height});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
