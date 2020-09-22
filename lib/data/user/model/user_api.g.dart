// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserApi _$UserApiFromJson(Map<String, dynamic> json) {
  return UserApi(
    json['id'] as String,
    json['login'] as String,
    json['bio'] as String,
    json['avatarUrl'] as String,
  );
}

Map<String, dynamic> _$UserApiToJson(UserApi instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'bio': instance.bio,
      'avatarUrl': instance.avatarUrl,
    };
