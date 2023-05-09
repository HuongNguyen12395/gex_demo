import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static HttpLink httpLink = HttpLink(
    'https://www.buffalos-backend-hasura.asia/v1/graphql',
    defaultHeaders: {
      'content-type': 'application/json; charset=utf-8',
      'x-hasura-admin-secret': 'mtenrbuncbsbhjzbvq'
    },
  );

  // final AuthLink authLink = AuthLink(
  //   getToken: () async => 'Bearer $tokenFromSuccessfulSignIn',
  // );

  GraphQLClient clientToQuery() => GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink,
      );
}
