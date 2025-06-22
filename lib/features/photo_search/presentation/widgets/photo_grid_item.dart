import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:berkut_unsplash_app/core/config/dimensions.dart';

class PhotoGridItem extends StatelessWidget {
  final PhotoEntity photo;
  const PhotoGridItem({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Навигация с передачей объекта фото
        context.pushNamed('photo_detail', extra: photo);
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusM),
        ),
        elevation: 2,
        child: AspectRatio(
          aspectRatio: AppDimensions.imageAspectRatio,
          child: Image.network(
            photo.imageUrlSmall,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(child: CircularProgressIndicator());
            },
            errorBuilder: (context, error, stackTrace) => Container(
              color: Colors.grey[300],
              child: const Icon(Icons.error, size: 48),
            ),
          ),
        ),
      ),
    );
  }
}