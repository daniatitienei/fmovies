import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fmovies/data/repository/MovieApiImpl.dart';
import 'package:fmovies/domain/models/movie/Movie.dart';
import 'package:fmovies/ui/screens/inspect_movie/ActorsExpandableCard.dart';

class InspectMovie extends StatefulWidget {
  const InspectMovie({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  State<InspectMovie> createState() => _InspectMovieState();
}

class _InspectMovieState extends State<InspectMovie> {
  late Future<Movie> movieFuture;

  bool isActorListExpanded = false;

  @override
  void initState() {
    super.initState();
    movieFuture = MovieApiRepositoryImpl().getMovieById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Movie>(
      future: movieFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final movie = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              title: Text(movie.title.toString()),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              elevation: 5,
            ),
            extendBodyBehindAppBar: true,
            body: ListView(
              padding: const EdgeInsets.only(top: 0),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Image(
                    image: NetworkImage(
                      movie.image.toString(),
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                      ),
                      Text(
                        movie.fullTitle.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.titleLarge?.fontSize,
                        ),
                      ),
                      Container(
                        height: 5,
                      ),
                      Text("${movie.releaseDate}, ${movie.runtimeStr}"),
                      Container(
                        height: 5,
                      ),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: (movie.imDbRating != null)
                                ? double.parse(movie.imDbRating.toString()) / 2
                                : 0.0,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 24.0,
                            direction: Axis.horizontal,
                          ),
                          Text(
                            "(${(movie.imDbRatingVotes != null) ? movie.imDbRatingVotes : 0})",
                          )
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      ActorsExpandableCard(
                        movie: movie,
                        onExpansionChanged: (expansion) =>
                            isActorListExpanded = expansion,
                        initiallyExpanded: isActorListExpanded,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
