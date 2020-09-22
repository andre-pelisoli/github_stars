import 'package:github_stars/data/user/model/user_api.dart';
import 'package:github_stars/data/user/remote/user_query.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class IUserRemoteData {
  Future<List<UserApi>> getUsers(String name);
}

class UserRemoteData implements IUserRemoteData {
  UserRemoteData(this._client);

  final GraphQLClient _client;

  @override
  Future<List<UserApi>> getUsers(String name) async {
    try {
      final result = await _client.query(QueryOptions(
        documentNode: gql(UserQuery.getUserQuery),
        variables: {"login": name},
      ));

      if (result.data == null) {
        return [];
      }
      return result.data['user']
          .map((e) => UserApi.fromJson(e))
          .cast<UserApi>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw Exception();
    }
  }
}
