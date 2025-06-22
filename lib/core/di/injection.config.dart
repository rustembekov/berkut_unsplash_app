// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/photo_favorites/data/datasources/photo_local_datasource.dart'
    as _i7;
import '../../features/photo_favorites/data/repositories/favorites_repository_impl.dart'
    as _i13;
import '../../features/photo_favorites/domain/repositories/favorites_repository.dart'
    as _i12;
import '../../features/photo_favorites/domain/usecases/add_favorite.dart'
    as _i20;
import '../../features/photo_favorites/domain/usecases/get_favorites.dart'
    as _i14;
import '../../features/photo_favorites/domain/usecases/is_favorite_stream.dart'
    as _i16;
import '../../features/photo_favorites/domain/usecases/remove_favorite.dart'
    as _i19;
import '../../features/photo_favorites/presentation/bloc/favorites_cubit.dart'
    as _i21;
import '../../features/photo_search/data/datasources/photo_remote_datasource.dart'
    as _i8;
import '../../features/photo_search/data/repositories/photo_repository_impl.dart'
    as _i10;
import '../../features/photo_search/domain/repositories/photo_repository.dart'
    as _i9;
import '../../features/photo_search/domain/usecases/get_random_photos.dart'
    as _i15;
import '../../features/photo_search/domain/usecases/search_photos.dart' as _i11;
import '../../features/photo_search/presentation/bloc/photo_detail/photo_detail_cubit.dart'
    as _i22;
import '../../features/photo_search/presentation/bloc/photo_random/photo_random_cubit.dart'
    as _i17;
import '../../features/photo_search/presentation/bloc/photo_search/photo_search_cubit.dart'
    as _i18;
import '../api/dio_client.dart' as _i23;
import '../config/app_config.dart' as _i3;
import '../db/isar_service.dart' as _i6;
import '../router/app_router.dart' as _i24;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final routerModule = _$RouterModule();
    gh.singleton<_i3.AppConfig>(() => _i3.AppConfig.create());
    gh.lazySingleton<_i4.Dio>(() => dioModule.provideDio(gh<_i3.AppConfig>()));
    gh.lazySingleton<_i5.GoRouter>(() => routerModule.provideGoRouter());
    gh.lazySingleton<_i6.IsarService>(() => _i6.IsarService());
    gh.lazySingleton<_i7.PhotoLocalDataSource>(
        () => _i7.PhotoLocalDataSourceImpl(gh<_i6.IsarService>()));
    gh.lazySingleton<_i8.PhotoRemoteDataSource>(
        () => _i8.PhotoRemoteDataSourceImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i9.PhotoRepository>(() => _i10.PhotoRepositoryImpl(
        remoteDataSource: gh<_i8.PhotoRemoteDataSource>()));
    gh.lazySingleton<_i11.SearchPhotos>(
        () => _i11.SearchPhotos(gh<_i9.PhotoRepository>()));
    gh.lazySingleton<_i12.FavoritesRepository>(() =>
        _i13.FavoritesRepositoryImpl(
            localDataSource: gh<_i7.PhotoLocalDataSource>()));
    gh.lazySingleton<_i14.GetFavorites>(
        () => _i14.GetFavorites(gh<_i12.FavoritesRepository>()));
    gh.lazySingleton<_i15.GetRandomPhotos>(
        () => _i15.GetRandomPhotos(gh<_i9.PhotoRepository>()));
    gh.lazySingleton<_i16.IsFavoriteStream>(
        () => _i16.IsFavoriteStream(gh<_i12.FavoritesRepository>()));
    gh.factory<_i17.PhotoRandomCubit>(
        () => _i17.PhotoRandomCubit(gh<_i15.GetRandomPhotos>()));
    gh.factory<_i18.PhotoSearchCubit>(
        () => _i18.PhotoSearchCubit(gh<_i11.SearchPhotos>()));
    gh.lazySingleton<_i19.RemoveFavorite>(
        () => _i19.RemoveFavorite(gh<_i12.FavoritesRepository>()));
    gh.lazySingleton<_i20.AddFavorite>(
        () => _i20.AddFavorite(gh<_i12.FavoritesRepository>()));
    gh.factory<_i21.FavoritesCubit>(
        () => _i21.FavoritesCubit(gh<_i14.GetFavorites>()));
    gh.factory<_i22.PhotoDetailCubit>(() => _i22.PhotoDetailCubit(
          gh<_i16.IsFavoriteStream>(),
          gh<_i20.AddFavorite>(),
          gh<_i19.RemoveFavorite>(),
        ));
    return this;
  }
}

class _$DioModule extends _i23.DioModule {}

class _$RouterModule extends _i24.RouterModule {}
