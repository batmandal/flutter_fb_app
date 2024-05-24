// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InteractModel _$InteractModelFromJson(Map<String, dynamic> json) =>
    InteractModel(
      like: (json['like'] as num).toInt(),
      friends:
          (json['friends'] as List<dynamic>?)?.map((e) => e as String).toList(),
      angry: (json['angry'] as num).toInt(),
      care: (json['care'] as num).toInt(),
      comments: (json['comments'] as num).toInt(),
      haha: (json['haha'] as num).toInt(),
      love: (json['love'] as num).toInt(),
      sad: (json['sad'] as num).toInt(),
      shares: (json['shares'] as num).toInt(),
      wow: (json['wow'] as num).toInt(),
    );

Map<String, dynamic> _$InteractModelToJson(InteractModel instance) =>
    <String, dynamic>{
      'like': instance.like,
      'love': instance.love,
      'haha': instance.haha,
      'care': instance.care,
      'wow': instance.wow,
      'angry': instance.angry,
      'sad': instance.sad,
      'comments': instance.comments,
      'shares': instance.shares,
      'friends': instance.friends,
    };
