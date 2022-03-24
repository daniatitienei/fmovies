import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fmovies/data/repository/MovieApiImpl.dart';
import 'package:fmovies/domain/models/movie/CommingSoonMovies.dart';
import 'package:fmovies/domain/models/movie/MostPopularMovies.dart';
import 'package:fmovies/ui/screens/InspectMovie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<CommingSoonMovies> commingSoonMoviesFuture;
  late Future<MostPopularMovies> mostPopularMoviesFuture;

  @override
  void initState() {
    super.initState();
    commingSoonMoviesFuture = MovieApiRepositoryImpl().getComingSoonMovies();
    mostPopularMoviesFuture = MovieApiRepositoryImpl().getMostPopularMovies();
  }

  Widget movieCard({
    required String imageUrl,
    required String title,
    required void Function() onClick,
  }) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FMovies',
          style: TextStyle(letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<CommingSoonMovies>(
        future: commingSoonMoviesFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final movieList = snapshot.data!.movies;

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ListView(
                children: [
                  Column(
                    children: [
                      const Text(
                        'COMMING SOON',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                      ),
                      Container(
                        height: 15,
                      ),
                      CarouselSlider.builder(
                        itemCount: movieList!.length,
                        itemBuilder: (_, index, slide) => movieCard(
                          imageUrl: movieList[index].image.toString(),
                          title: movieList[index].title.toString(),
                          onClick: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InspectMovie(
                                  id: movieList[index].id.toString(),
                                ),
                              ),
                            )
                          },
                        ),
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 1.5,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          viewportFraction: 0.4,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  FutureBuilder<MostPopularMovies>(
                    future: mostPopularMoviesFuture,
                    builder: ((context, snapshot) {
                      if (snapshot.hasData) {
                        final mostPopularMovies = snapshot.data!;

                        return Column(
                          children: [
                            const Text(
                              'MOST POPULAR',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3),
                            ),
                            Container(
                              height: 15,
                            ),

                            GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 25,
                              ),
                              itemBuilder: (context, index) => movieCard(
                                imageUrl: mostPopularMovies.movies![index].image
                                    .toString(),
                                title: mostPopularMovies.movies![index].title
                                    .toString(),
                                onClick: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InspectMovie(
                                        id: mostPopularMovies.movies![index].id
                                            .toString(),
                                      ),
                                    ),
                                  )
                                },
                              ),
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: mostPopularMovies.movies!.length,
                              shrinkWrap: true,
                            ),
                          ],
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
