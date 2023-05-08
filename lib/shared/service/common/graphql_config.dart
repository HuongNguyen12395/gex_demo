import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static HttpLink httpLink =
      HttpLink('https://www.buffalos-backend-hasura.asia/v1/graphql');

  // final AuthLink authLink = AuthLink(
  //   getToken: () async => 'Bearer $tokenFromSuccessfulSignIn',
  // );

  GraphQLClient clientToQuery() => GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink,
      );
}
