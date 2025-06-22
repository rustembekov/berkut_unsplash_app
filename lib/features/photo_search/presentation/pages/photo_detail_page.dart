import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:berkut_unsplash_app/core/di/injection.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/bloc/photo_detail/photo_detail_cubit.dart';

class PhotoDetailPage extends StatelessWidget {
  final PhotoEntity photo;
  const PhotoDetailPage({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PhotoDetailCubit>()..checkFavoriteStatus(photo.id),
      child: Scaffold(
        appBar: AppBar(
          title: Text(photo.authorName),
          actions: [
            BlocBuilder<PhotoDetailCubit, PhotoDetailState>(
              builder: (context, state) {
                return IconButton(
                  icon: Icon(
                    state.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: state.isFavorite ? Colors.red : null,
                  ),
                  onPressed: () {
                    context.read<PhotoDetailCubit>().toggleFavorite(photo);
                  },
                );
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                photo.imageUrlRegular,
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
                loadingBuilder: (_, child, progress) =>
                    progress == null ? child : const Center(child: CircularProgressIndicator()),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (photo.description != null && photo.description!.isNotEmpty)
                      Text(photo.description!, style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.favorite_outline, size: 16),
                        const SizedBox(width: 4),
                        Text('${photo.likes} лайков'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}