class CityModel {
  final String id;
  final String nameKr;
  final String nameEn;
  final String nameAr;
  final String status;
  final String createdAt;
  final String updatedAt;

  CityModel(
      {required this.id,
      required this.nameKr,
      required this.nameEn,
      required this.nameAr,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory CityModel.fromJson(Map<String, dynamic> data) => CityModel(
        id: data['_id'],
        nameKr: data['nameKr'],
        nameEn: data['nameEn'],
        nameAr: data['nameAr'],
        status: data['status'],
        createdAt: data['createdAt'],
        updatedAt: data['updatedAt'],
      );
}
