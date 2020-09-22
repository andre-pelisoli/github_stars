import 'package:github_stars/data/user/remote/user_remote_data.dart';
import 'package:github_stars/domain/user/model/UserEntity.dart';
import 'package:github_stars/domain/user/repository/user_repository_interface.dart';

class UserRepository implements UserRepositoryInterface {
  final IUserRemoteData _userRemoteData;

  UserRepository(this._userRemoteData);

  Future<List<UserEntity>> getUsers(String name) async {
    try {
      final models = await _userRemoteData.getUsers(name);
      final entities = models.map<UserEntity>((e) => e.toEntity()).toList();
      return entities;
    } on Exception catch (e) {
      print(e);
      throw e;
    }
  }
}
