import 'package:flutter/cupertino.dart';

class VenderPlanModel {
  final String id;
  final String nameKr;
  final String nameEn;
  final String nameAr;
  final String image;
  final int limitBids;
  final int price;
  final String status;
  final String createdAt;
  final String updatedAt;

  VenderPlanModel(
      {required this.id,
      required this.nameKr,
      required this.nameEn,
      required this.nameAr,
      required this.image,
      required this.limitBids,
      required this.price,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory VenderPlanModel.fromJson(Map<String, dynamic> data) =>
      VenderPlanModel(
        id: data['_id'],
        nameKr: data['nameKr'],
        nameEn: data['nameEn'],
        nameAr: data['nameAr'],
        image: data['image'],
        limitBids: data['limitBids'],
        price: data['price'],
        status: data['status'],
        createdAt: data['createdAt'],
        updatedAt: data['updatedAt'],
      );
}

List<VenderPlanModel> demoVenderPlans(BuildContext context) => [
      VenderPlanModel(
          id: '38383838838383883',
          limitBids: 20,
          price: 2500000,
          nameKr: 'فری ',
          nameEn: 'Free',
          nameAr: 'بلاش',
          image:
              'https://www.pngall.com/wp-content/uploads/2016/04/Free-Free-Download-PNG.png',
          status: 'ACTIVE',
          createdAt: '',
          updatedAt: ''),
      VenderPlanModel(
          id: '38383834348838383883',
          limitBids: 10,
          price: 6600000,
          nameKr: 'پریمم ',
          nameEn: 'Premium',
          nameAr: 'پریمم',
          image:
              'https://www.pngall.com/wp-content/uploads/2016/04/Free-Free-Download-PNG.png',
          status: 'ACTIVE',
          createdAt: '',
          updatedAt: ''),
      VenderPlanModel(
          id: '38383838838383883',
          limitBids: 20,
          price: 2500000,
          nameKr: 'فری ',
          nameEn: 'Free',
          nameAr: 'بلاش',
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeAJcqYIoOt9alPKojKCuIMUuNvBmyIp4i0hkEJyyL7vleZ8ufU6lWV7LOXX_gEA6Mick&usqp=CAU',
          status: 'ACTIVE',
          createdAt: '',
          updatedAt: ''),
      VenderPlanModel(
          id: '38383834348838383883',
          limitBids: 10,
          price: 6600000,
          nameKr: 'پریمم ',
          nameEn: 'Premium',
          nameAr: 'پریمم',
          image:
              'https://st.depositphotos.com/1011833/3698/i/950/depositphotos_36981729-stock-photo-premium-quality-guaranteed-gold-seal.jpg',
          status: 'ACTIVE',
          createdAt: '',
          updatedAt: ''),
      VenderPlanModel(
          id: '38383838838383883',
          limitBids: 20,
          price: 2500000,
          nameKr: 'فری ',
          nameEn: 'Free',
          nameAr: 'بلاش',
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeAJcqYIoOt9alPKojKCuIMUuNvBmyIp4i0hkEJyyL7vleZ8ufU6lWV7LOXX_gEA6Mick&usqp=CAU',
          status: 'ACTIVE',
          createdAt: '',
          updatedAt: ''),
      VenderPlanModel(
          id: '38383834348838383883',
          limitBids: 10,
          price: 6600000,
          nameKr: 'پریمم ',
          nameEn: 'Premium',
          nameAr: 'پریمم',
          image:
              'https://st.depositphotos.com/1011833/3698/i/950/depositphotos_36981729-stock-photo-premium-quality-guaranteed-gold-seal.jpg',
          status: 'ACTIVE',
          createdAt: '',
          updatedAt: ''),
    ];
