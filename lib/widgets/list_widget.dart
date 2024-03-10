import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final String title;

  const ListWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 35.0,
          ),
        ],
      ),
    );
  }
}
