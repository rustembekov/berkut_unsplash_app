import 'package:berkut_unsplash_app/core/config/app_strings.dart';
import 'package:berkut_unsplash_app/core/config/dimensions.dart';
import 'package:berkut_unsplash_app/core/di/injection.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/bloc/photo_random/photo_random_cubit.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/widgets/photo_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PhotoRandomCubit>()..fetchRandomPhotos(),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              _TopBar(),
              _SearchSection(),
              _PhotoList(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(
        left: AppDimensions.spacingL,
        right: AppDimensions.spacingL,
        top: MediaQuery.of(context).padding.top,
        bottom: AppDimensions.spacingS,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/logo.svg',
            height: AppDimensions.iconSizeXL,
          ),
          IconButton(
            onPressed: () => context.push('/favorites'),
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: AppDimensions.iconSizeL,
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: GestureDetector(
              onTap: () => context.push('/search'),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimensions.spacingL,
                  vertical: AppDimensions.spacingM,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(AppDimensions.radiusS),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.searchHint,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                    const Icon(Icons.search, color: Colors.black),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PhotoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<PhotoRandomCubit, PhotoRandomState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (photos) => ListView.builder(
              padding: AppDimensions.paddingAll,
              itemCount: photos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: AppDimensions.paddingBottom,
                  child: PhotoGridItem(photo: photos[index]),
                );
              },
            ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}