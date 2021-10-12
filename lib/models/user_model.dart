class CityModel {
  final String id;
  final String userInfoId;
  final String phone;
  final String role;
  final String token;
  final String status;
  final String createdAt;
  final String updatedAt;

  CityModel(
      {required this.id,
      required this.userInfoId,
      required this.phone,
      required this.role,
      required this.token,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory CityModel.fromJson(Map<String, dynamic> data) => CityModel(
        id: data['_id'],
        userInfoId: data['userInfo']['_id'],
        phone: data['phone'],
        role: data['role'],
        token: data['token'],
        status: data['status'],
        createdAt: data['createdAt'],
        updatedAt: data['updatedAt'],
      );
}
