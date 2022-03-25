import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onClick,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
