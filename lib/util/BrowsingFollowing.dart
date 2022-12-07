import 'package:flutter/material.dart';

class BrowsingFollowing extends StatelessWidget {
  final String browsingFollowing;
  final bool isSelected;
  final VoidCallback onTap;

  BrowsingFollowing({
    required this.browsingFollowing,
    required this.isSelected,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 75.0),
        child: Text(
          browsingFollowing,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.green : Colors.white,
          ),
        ),
      ),
    );
  }
}
