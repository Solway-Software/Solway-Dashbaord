class SessionModel {
  final String userId;
  final String token;
  final String role;

  SessionModel({
    required this.userId,
    required this.token,
    required this.role,
  });

  factory SessionModel.fromJson(Map<String, dynamic> data) => SessionModel(
      userId: data['userId'], token: data['token'], role: data['role']);

  Map<String, dynamic> toJson() =>
      {'userId': userId, 'token': token, 'role': role};
}
