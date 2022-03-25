import 'package:flutter/material.dart';
import 'package:fmovies/domain/models/movie/Movie.dart';
import 'package:fmovies/ui/screens/inspect_movie/ActorListTile.dart';

class ActorsExpandableCard extends StatelessWidget {
  const ActorsExpandableCard({
    Key? key,
    required this.movie,
    required this.onExpansionChanged,
    required this.initiallyExpanded,
  }) : super(key: key);

  final Movie movie;
  final Function(bool) onExpansionChanged;
  final bool initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        onExpansionChanged: onExpansionChanged,
        initiallyExpanded: initiallyExpanded,
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        expandedAlignment: Alignment.topLeft,
        collapsedTextColor: Colors.white,
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        childrenPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        title: Text(
          'Actors',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
          ),
        ),
        children: [
          for (var actor in movie.actor!) ActorListTile(actor: actor),
        ],
      ),
    );
  }
}
