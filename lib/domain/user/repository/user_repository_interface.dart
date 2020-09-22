import 'package:github_stars/domain/user/model/UserEntity.dart';

abstract class UserRepositoryInterface {
  Future<List<UserEntity>> getUsers(String name);
}
