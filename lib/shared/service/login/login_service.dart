import 'package:graphql_flutter/graphql_flutter.dart';

import '../common/graphql_config.dart';
import 'login_model.dart';

class LoginService {
  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();

  Future login({
    required String username,
    required String password,
  }) async {
    try {
      QueryResult result = await client.mutate(
        MutationOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: gql(
            """
              mutation Mutation(\$email: Email, \$password: Password) {
                login_bufalo_app(Email: \$id, Password: \$password) {
                  email
                  token
                  user_id
                }
              }
            """,
          ),
          variables: {
            "email": username,
            "password": password,
          },
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        List? res = result.data?['login_bufalo_app'];

        if (res == null || res.isEmpty) {
          return [];
        }

        List<LoginModel> feelings =
            res.map((feeling) => LoginModel.fromMap(map: feeling)).toList();

        return feelings;
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}
