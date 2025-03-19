import 'package:flutter/material.dart';

class DislikeButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DislikeButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.thumb_down, color: Colors.white70, size: 32),
      onPressed: onPressed,
      tooltip: 'Dislike',
    );
  }
}
