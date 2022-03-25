import 'package:flutter/material.dart';
import 'package:fmovies/domain/models/movie/Movie.dart';

class ActorListTile extends StatelessWidget {
  const ActorListTile({Key? key, required this.actor}) : super(key: key);

  final Actor actor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                actor.image.toString(),
              ),
              radius: MediaQuery.of(context).size.width * 0.1,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  actor.name.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "As ${actor.asCharacter.toString()}",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
