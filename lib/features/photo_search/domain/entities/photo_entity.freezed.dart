// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoEntity {
  String get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get imageUrlSmall => throw _privateConstructorUsedError;
  String get imageUrlRegular => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoEntityCopyWith<PhotoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoEntityCopyWith<$Res> {
  factory $PhotoEntityCopyWith(
          PhotoEntity value, $Res Function(PhotoEntity) then) =
      _$PhotoEntityCopyWithImpl<$Res, PhotoEntity>;
  @useResult
  $Res call(
      {String id,
      String? description,
      String imageUrlSmall,
      String imageUrlRegular,
      String authorName,
      int likes});
}

/// @nodoc
class _$PhotoEntityCopyWithImpl<$Res, $Val extends PhotoEntity>
    implements $PhotoEntityCopyWith<$Res> {
  _$PhotoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? imageUrlSmall = null,
    Object? imageUrlRegular = null,
    Object? authorName = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrlSmall: null == imageUrlSmall
          ? _value.imageUrlSmall
          : imageUrlSmall // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrlRegular: null == imageUrlRegular
          ? _value.imageUrlRegular
          : imageUrlRegular // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoEntityImplCopyWith<$Res>
    implements $PhotoEntityCopyWith<$Res> {
  factory _$$PhotoEntityImplCopyWith(
          _$PhotoEntityImpl value, $Res Function(_$PhotoEntityImpl) then) =
      __$$PhotoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? description,
      String imageUrlSmall,
      String imageUrlRegular,
      String authorName,
      int likes});
}

/// @nodoc
class __$$PhotoEntityImplCopyWithImpl<$Res>
    extends _$PhotoEntityCopyWithImpl<$Res, _$PhotoEntityImpl>
    implements _$$PhotoEntityImplCopyWith<$Res> {
  __$$PhotoEntityImplCopyWithImpl(
      _$PhotoEntityImpl _value, $Res Function(_$PhotoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? imageUrlSmall = null,
    Object? imageUrlRegular = null,
    Object? authorName = null,
    Object? likes = null,
  }) {
    return _then(_$PhotoEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrlSmall: null == imageUrlSmall
          ? _value.imageUrlSmall
          : imageUrlSmall // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrlRegular: null == imageUrlRegular
          ? _value.imageUrlRegular
          : imageUrlRegular // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PhotoEntityImpl implements _PhotoEntity {
  const _$PhotoEntityImpl(
      {required this.id,
      this.description,
      required this.imageUrlSmall,
      required this.imageUrlRegular,
      required this.authorName,
      required this.likes});

  @override
  final String id;
  @override
  final String? description;
  @override
  final String imageUrlSmall;
  @override
  final String imageUrlRegular;
  @override
  final String authorName;
  @override
  final int likes;

  @override
  String toString() {
    return 'PhotoEntity(id: $id, description: $description, imageUrlSmall: $imageUrlSmall, imageUrlRegular: $imageUrlRegular, authorName: $authorName, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrlSmall, imageUrlSmall) ||
                other.imageUrlSmall == imageUrlSmall) &&
            (identical(other.imageUrlRegular, imageUrlRegular) ||
                other.imageUrlRegular == imageUrlRegular) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.likes, likes) || other.likes == likes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, description, imageUrlSmall,
      imageUrlRegular, authorName, likes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoEntityImplCopyWith<_$PhotoEntityImpl> get copyWith =>
      __$$PhotoEntityImplCopyWithImpl<_$PhotoEntityImpl>(this, _$identity);
}

abstract class _PhotoEntity implements PhotoEntity {
  const factory _PhotoEntity(
      {required final String id,
      final String? description,
      required final String imageUrlSmall,
      required final String imageUrlRegular,
      required final String authorName,
      required final int likes}) = _$PhotoEntityImpl;

  @override
  String get id;
  @override
  String? get description;
  @override
  String get imageUrlSmall;
  @override
  String get imageUrlRegular;
  @override
  String get authorName;
  @override
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$PhotoEntityImplCopyWith<_$PhotoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
