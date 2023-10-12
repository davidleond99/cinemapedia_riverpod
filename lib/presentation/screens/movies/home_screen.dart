import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final slideshowMovie = ref.watch(movieSlideshowProvider);
    // if (nowPlayingMovies.isEmpty) {
    //   return const Center(
    //       child: CircularProgressIndicator(
    //     strokeWidth: 2,
    //     strokeAlign: 8,
    //     backgroundColor: Colors.grey,
    //     color: Colors.black,
    //   ));
    // }

    return Column(
      children: [
        const CustomAppbar(),
        MoviesSlideshow(movies: slideshowMovie),
      ],
    );
  }
}
