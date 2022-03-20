import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fmovies/data/repository/movie_api_impl.dart';
import 'package:fmovies/domain/models/movie/movie_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<MovieList> movies;

  @override
  void initState() {
    super.initState();
    movies = MovieApiRepositoryImpl().getComingSoonMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FMovies'),
        centerTitle: true,
      ),
      body: FutureBuilder<MovieList>(
        future: movies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final movieList = snapshot.data!.items;

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  const Text(
                    'COMMING SOON',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, letterSpacing: 3),
                  ),
                  Container(
                    height: 15,
                  ),
                  CarouselSlider.builder(
                    itemCount: movieList!.length,
                    itemBuilder: (_, index, slide) => Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(
                              image:
                                  NetworkImage(movieList[index].image.toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Divider(height: 8),
                        Text(
                          movieList[index].title.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 1.5,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      viewportFraction: 0.4,
                    ),
                  )
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
