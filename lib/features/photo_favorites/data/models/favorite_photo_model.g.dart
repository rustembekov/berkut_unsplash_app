// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_photo_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFavoritePhotoModelCollection on Isar {
  IsarCollection<FavoritePhotoModel> get favoritePhotoModels =>
      this.collection();
}

const FavoritePhotoModelSchema = CollectionSchema(
  name: r'FavoritePhotoModel',
  id: 4170802356161965709,
  properties: {
    r'authorName': PropertySchema(
      id: 0,
      name: r'authorName',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'imageUrlRegular': PropertySchema(
      id: 2,
      name: r'imageUrlRegular',
      type: IsarType.string,
    ),
    r'imageUrlSmall': PropertySchema(
      id: 3,
      name: r'imageUrlSmall',
      type: IsarType.string,
    ),
    r'likes': PropertySchema(
      id: 4,
      name: r'likes',
      type: IsarType.long,
    ),
    r'photoId': PropertySchema(
      id: 5,
      name: r'photoId',
      type: IsarType.string,
    )
  },
  estimateSize: _favoritePhotoModelEstimateSize,
  serialize: _favoritePhotoModelSerialize,
  deserialize: _favoritePhotoModelDeserialize,
  deserializeProp: _favoritePhotoModelDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'photoId': IndexSchema(
      id: -1877533456151046685,
      name: r'photoId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'photoId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _favoritePhotoModelGetId,
  getLinks: _favoritePhotoModelGetLinks,
  attach: _favoritePhotoModelAttach,
  version: '3.1.0+1',
);

int _favoritePhotoModelEstimateSize(
  FavoritePhotoModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.authorName.length * 3;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.imageUrlRegular.length * 3;
  bytesCount += 3 + object.imageUrlSmall.length * 3;
  bytesCount += 3 + object.photoId.length * 3;
  return bytesCount;
}

void _favoritePhotoModelSerialize(
  FavoritePhotoModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.authorName);
  writer.writeString(offsets[1], object.description);
  writer.writeString(offsets[2], object.imageUrlRegular);
  writer.writeString(offsets[3], object.imageUrlSmall);
  writer.writeLong(offsets[4], object.likes);
  writer.writeString(offsets[5], object.photoId);
}

FavoritePhotoModel _favoritePhotoModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FavoritePhotoModel(
    authorName: reader.readString(offsets[0]),
    description: reader.readStringOrNull(offsets[1]),
    imageUrlRegular: reader.readString(offsets[2]),
    imageUrlSmall: reader.readString(offsets[3]),
    likes: reader.readLong(offsets[4]),
    photoId: reader.readString(offsets[5]),
  );
  object.isarId = id;
  return object;
}

P _favoritePhotoModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _favoritePhotoModelGetId(FavoritePhotoModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _favoritePhotoModelGetLinks(
    FavoritePhotoModel object) {
  return [];
}

void _favoritePhotoModelAttach(
    IsarCollection<dynamic> col, Id id, FavoritePhotoModel object) {
  object.isarId = id;
}

extension FavoritePhotoModelByIndex on IsarCollection<FavoritePhotoModel> {
  Future<FavoritePhotoModel?> getByPhotoId(String photoId) {
    return getByIndex(r'photoId', [photoId]);
  }

  FavoritePhotoModel? getByPhotoIdSync(String photoId) {
    return getByIndexSync(r'photoId', [photoId]);
  }

  Future<bool> deleteByPhotoId(String photoId) {
    return deleteByIndex(r'photoId', [photoId]);
  }

  bool deleteByPhotoIdSync(String photoId) {
    return deleteByIndexSync(r'photoId', [photoId]);
  }

  Future<List<FavoritePhotoModel?>> getAllByPhotoId(
      List<String> photoIdValues) {
    final values = photoIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'photoId', values);
  }

  List<FavoritePhotoModel?> getAllByPhotoIdSync(List<String> photoIdValues) {
    final values = photoIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'photoId', values);
  }

  Future<int> deleteAllByPhotoId(List<String> photoIdValues) {
    final values = photoIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'photoId', values);
  }

  int deleteAllByPhotoIdSync(List<String> photoIdValues) {
    final values = photoIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'photoId', values);
  }

  Future<Id> putByPhotoId(FavoritePhotoModel object) {
    return putByIndex(r'photoId', object);
  }

  Id putByPhotoIdSync(FavoritePhotoModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'photoId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByPhotoId(List<FavoritePhotoModel> objects) {
    return putAllByIndex(r'photoId', objects);
  }

  List<Id> putAllByPhotoIdSync(List<FavoritePhotoModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'photoId', objects, saveLinks: saveLinks);
  }
}

extension FavoritePhotoModelQueryWhereSort
    on QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QWhere> {
  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterWhere>
      anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FavoritePhotoModelQueryWhere
    on QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QWhereClause> {
  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterWhereClause>
      photoIdEqualTo(String photoId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'photoId',
        value: [photoId],
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterWhereClause>
      photoIdNotEqualTo(String photoId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'photoId',
              lower: [],
              upper: [photoId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'photoId',
              lower: [photoId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'photoId',
              lower: [photoId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'photoId',
              lower: [],
              upper: [photoId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension FavoritePhotoModelQueryFilter
    on QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QFilterCondition> {
  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'authorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'authorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'authorName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'authorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'authorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'authorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'authorName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authorName',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      authorNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'authorName',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrlRegular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrlRegular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrlRegular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrlRegular',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrlRegular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrlRegular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrlRegular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrlRegular',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrlRegular',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlRegularIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrlRegular',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrlSmall',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrlSmall',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrlSmall',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      imageUrlSmallIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrlSmall',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      likesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'likes',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      likesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'likes',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      likesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'likes',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      likesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'likes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photoId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoId',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterFilterCondition>
      photoIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photoId',
        value: '',
      ));
    });
  }
}

extension FavoritePhotoModelQueryObject
    on QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QFilterCondition> {}

extension FavoritePhotoModelQueryLinks
    on QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QFilterCondition> {}

extension FavoritePhotoModelQuerySortBy
    on QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QSortBy> {
  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByAuthorName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorName', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByAuthorNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorName', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByImageUrlRegular() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrlRegular', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByImageUrlRegularDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrlRegular', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByImageUrlSmall() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrlSmall', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByImageUrlSmallDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrlSmall', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByLikes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likes', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByLikesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likes', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByPhotoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoId', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      sortByPhotoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoId', Sort.desc);
    });
  }
}

extension FavoritePhotoModelQuerySortThenBy
    on QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QSortThenBy> {
  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByAuthorName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorName', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByAuthorNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authorName', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByImageUrlRegular() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrlRegular', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByImageUrlRegularDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrlRegular', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByImageUrlSmall() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrlSmall', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByImageUrlSmallDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrlSmall', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByLikes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likes', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByLikesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likes', Sort.desc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByPhotoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoId', Sort.asc);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QAfterSortBy>
      thenByPhotoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoId', Sort.desc);
    });
  }
}

extension FavoritePhotoModelQueryWhereDistinct
    on QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QDistinct> {
  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QDistinct>
      distinctByAuthorName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'authorName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QDistinct>
      distinctByImageUrlRegular({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrlRegular',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QDistinct>
      distinctByImageUrlSmall({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrlSmall',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QDistinct>
      distinctByLikes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'likes');
    });
  }

  QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QDistinct>
      distinctByPhotoId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photoId', caseSensitive: caseSensitive);
    });
  }
}

extension FavoritePhotoModelQueryProperty
    on QueryBuilder<FavoritePhotoModel, FavoritePhotoModel, QQueryProperty> {
  QueryBuilder<FavoritePhotoModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<FavoritePhotoModel, String, QQueryOperations>
      authorNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'authorName');
    });
  }

  QueryBuilder<FavoritePhotoModel, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<FavoritePhotoModel, String, QQueryOperations>
      imageUrlRegularProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrlRegular');
    });
  }

  QueryBuilder<FavoritePhotoModel, String, QQueryOperations>
      imageUrlSmallProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrlSmall');
    });
  }

  QueryBuilder<FavoritePhotoModel, int, QQueryOperations> likesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'likes');
    });
  }

  QueryBuilder<FavoritePhotoModel, String, QQueryOperations> photoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photoId');
    });
  }
}
