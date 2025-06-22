import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:berkut_unsplash_app/features/photo_favorites/presentation/pages/favorites_page.dart';
import 'package:berkut_unsplash_app/features/photo_search/domain/entities/photo_entity.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/pages/home_page.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/pages/photo_detail_page.dart';
import 'package:berkut_unsplash_app/features/photo_search/presentation/pages/search_page.dart';

@module
abstract class RouterModule {
  @lazySingleton
  GoRouter provideGoRouter() {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => const SearchPage(),
        ),
        GoRoute(
          path: '/favorites',
          builder: (context, state) => const FavoritesPage(),
        ),
        GoRoute(
          path: '/photo',
          name: 'photo_detail',
          builder: (context, state) {
            // Передаем весь объект PhotoEntity через extra
            final photo = state.extra as PhotoEntity;
            return PhotoDetailPage(photo: photo);
          },
        ),
      ],
    );
  }
}