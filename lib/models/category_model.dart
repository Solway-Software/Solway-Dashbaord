import 'package:flutter/cupertino.dart';

class CategoryModel {
  final String id;
  final String nameKr;
  final String nameEn;
  final String nameAr;
  final String image;
  final String status;
  final String createdAt;
  final String updatedAt;

  CategoryModel(
      {required this.id,
      required this.nameKr,
      required this.nameEn,
      required this.nameAr,
      required this.image,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory CategoryModel.fromJson(Map<String, dynamic> data) => CategoryModel(
        id: data['_id'],
        nameKr: data['nameKr'],
        nameEn: data['nameEn'],
        nameAr: data['nameAr'],
        image: data['image'],
        status: data['status'],
        createdAt: data['createdAt'],
        updatedAt: data['updatedAt'],
      );
}

List<CategoryModel> demoCategories(BuildContext context) => [
      CategoryModel(
          id: '2283273777832378',
          nameKr: 'جل ',
          nameEn: 'Clothes',
          nameAr: 'جل',
          image:
              'https://media.istockphoto.com/photos/summer-womens-fashion-clothes-set-moms-jeans-suede-sneakers-cotton-picture-id1131409615',
          status: 'ACTIVE',
          createdAt: '',
          updatedAt: ''),
      CategoryModel(
          id: '2283273777832378',
          nameKr: 'پێڵاو ',
          nameEn: 'Shoes',
          nameAr: 'پەلاو',
          image:
              'https://cdn.shopify.com/s/files/1/0107/9820/2938/products/gmmobile1_grande.png?v=1629754332',
          status: 'ACTIVE',
          createdAt: '',
          updatedAt: ''),
    ];
