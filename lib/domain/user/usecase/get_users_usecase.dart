import 'package:github_stars/domain/user/model/UserEntity.dart';
import 'package:github_stars/domain/user/repository/user_repository_interface.dart';

class GetUsersUsecase {
  final UserRepositoryInterface _repository;

  GetUsersUsecase(this._repository);

  Future<List<UserEntity>> getUsers(String name) {
    return _repository.getUsers(name);
  }
}
