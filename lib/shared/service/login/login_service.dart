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
                mutation MyMutation {
                  login_bufalo_app(email: "cuongln.hust@gmail.com", password: "123456") {
                    email
                    token
                    user_id
                  }
                }
            """,
            )),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        var res = result.data?['login_bufalo_app'];

        if (res == null || res.isEmpty) {
          return {};
        }

        LoginModel feelings = LoginModel.fromMap(map: res);

        return feelings;
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}
