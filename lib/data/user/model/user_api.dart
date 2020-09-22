import 'package:github_stars/domain/user/model/UserEntity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_api.g.dart';

@JsonSerializable()
class UserApi {
  String id;
  String login;
  String bio;
  String avatarUrl;

  UserApi(this.id, this.login, this.bio, this.avatarUrl);

  factory UserApi.fromJson(Map<String, dynamic> json) =>
      _$UserApiFromJson(json);

  Map<String, dynamic> toJson() => _$UserApiToJson(this);

  UserEntity toEntity() {
    return UserEntity(id, login, bio, avatarUrl);
  }
}
