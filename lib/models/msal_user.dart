/// Microsoft user details.
class MsalUser {
  /// Usually, it's an email address.
  final String username;

  /// Full name registered in the Microsoft account.
  final String displayName;

  /// Authentication token.
  final String accessToken;

  /// Token created time.
  final dynamic tokenCreatedAt;

  /// Token expiration time in "MillisecondsSinceEpoch".
  final int tokenExpiresOn;
  final String email;
  MsalUser({
    required this.username,
    required this.displayName,
    required this.accessToken,
    required this.tokenCreatedAt,
    required this.tokenExpiresOn,    required this.email,
  });

  factory MsalUser.fromJson(Map<String, dynamic> json) {
    return MsalUser(
      username: json['preferred_username'] ?? '',
      displayName: json['name'] ?? '',
      accessToken: json['access_token'] ?? '',
      tokenCreatedAt: json['iat'] ?? '',
      tokenExpiresOn: json['exp'] ?? '',  email: json['email'] ?? '',
    );
  }

  Map<String, dynamic>? toJson() => {
        'preferred_username': username,
        'name': displayName,
        'access_token': accessToken,
        'iat': tokenCreatedAt,
        'exp': tokenExpiresOn,        'email': email,
      };
}
