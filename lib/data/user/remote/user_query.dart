class UserQuery {
  static String getUserQuery = '''
  query (\$login: String!) { 
    user(login: \$login) {
      id
      login
      name
      bio
      avatarUrl
      location
    }
}
  ''';
}
