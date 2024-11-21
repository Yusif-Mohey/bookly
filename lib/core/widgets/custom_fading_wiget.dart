import 'package:flutter/material.dart';

class CustomFadingWiget extends StatefulWidget {
  const CustomFadingWiget({super.key, required this.child});
  final Widget child;
  @override
  State<CustomFadingWiget> createState() => _CustomFadingWigetState();
}

class _CustomFadingWigetState extends State<CustomFadingWiget>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    animation =
        Tween<double>(begin: 0.2, end: 0.8).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: animation.value,
      child: widget.child,
    );
  }
}
