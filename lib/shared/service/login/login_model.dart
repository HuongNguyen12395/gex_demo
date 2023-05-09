class LoginModel {
  final num userId;
  final String email;
  final String token;

  LoginModel({
    required this.userId,
    required this.email,
    required this.token,
  });

  static LoginModel fromMap({required Map map}) => LoginModel(
        userId: map['user_id'],
        email: map['email'],
        token: map['token'],
      );
}
