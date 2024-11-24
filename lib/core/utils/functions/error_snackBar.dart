import 'package:flutter/material.dart';

SnackBar errorSnackBar() {
  return SnackBar(
    content: const Text(
      'An error occurred! Please try again.',
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating, // Optional: makes it float
    duration: const Duration(milliseconds: 3500), // Duration for visibility
  );
}
