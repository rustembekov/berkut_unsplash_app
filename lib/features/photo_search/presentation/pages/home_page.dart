import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:berkut_unsplash_app/core/di/injection.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/bloc/photo_random/photo_random_cubit.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/widgets/photo_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PhotoRandomCubit>()..fetchRandomPhotos(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Unsplash Gallery'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => context.go('/search'),
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () => context.go('/favorites'),
            ),
          ],
        ),
        body: BlocBuilder<PhotoRandomCubit, PhotoRandomState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (photos) => GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: photos.length,
                itemBuilder: (context, index) {
                  return PhotoGridItem(photo: photos[index]);
                },
              ),
              error: (message) => Center(child: Text(message)),
            );
          },
        ),
      ),
    );
  }
}