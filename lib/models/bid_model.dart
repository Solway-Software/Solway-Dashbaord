import 'package:flutter/cupertino.dart';

class BidModel {
  final String id;
  final String nameKr;
  final String nameEn;
  final String nameAr;
  final String descKr;
  final String descEn;
  final String descAr;
  final List<String> images;
  final String categoryId;
  final String userId;
  final int initialPrice;
  final int currentPrice;
  final int lastPrice;
  final String estimatedPrice;
  final int numViewers;
  final int numBids;
  final int numBidders;
  final String ebayUrl;
  final String amazonUrl;
  final bool isCompleted;
  final String createdAt;
  final String updatedAt;

  BidModel(
      {required this.id,
      required this.nameKr,
      required this.nameEn,
      required this.nameAr,
      required this.descKr,
      required this.descEn,
      required this.descAr,
      required this.images,
      required this.categoryId,
      required this.userId,
      required this.initialPrice,
      required this.currentPrice,
      required this.lastPrice,
      required this.estimatedPrice,
      required this.numViewers,
      required this.numBids,
      required this.numBidders,
      required this.ebayUrl,
      required this.amazonUrl,
      required this.isCompleted,
      required this.createdAt,
      required this.updatedAt});

  factory BidModel.fromJson(Map<String, dynamic> data) => BidModel(
        id: data['_id'],
        nameKr: data['nameKr'],
        nameEn: data['nameEn'],
        nameAr: data['nameAr'],
        descKr: data['descKr'],
        descEn: data['descEn'],
        descAr: data['descAr'],
        images: data['images'],
        categoryId: data['categoryId'],
        userId: data['userId'],
        initialPrice: data['initialPrice'],
        currentPrice: data['currentPrice'],
        lastPrice: data['lastPrice'],
        estimatedPrice: data['estimatedPrice'],
        numViewers: data['numViewers'],
        numBids: data['numBids'],
        numBidders: data['numBidders'],
        ebayUrl: data['ebayUrl'],
        amazonUrl: data['amazonUrl'],
        isCompleted: data['isCompleted'],
        createdAt: data['createdAt'],
        updatedAt: data['updatedAt'],
      );
}

List<BidModel> demoBids(BuildContext context) => [
      BidModel(
        id: '100000000000000001',
        nameKr: 'جلی ڕەش',
        nameEn: 'Black Clothes',
        nameAr: 'جلی ڕەش',
        descKr: 'جلی ڕەشجلی ڕەشجلی ڕەشجلی ڕەشجلی ڕەشجلی ڕەشجلی ڕەشجلی ڕەش',
        descEn:
            'BlBlack ClothBlack ClotheBlack ClothesBlack ClothBlack Clothesessesack CloBlaBlack Clothesck Clothesthes',
        descAr:
            'جلی ڕەشجلی ڕەشجلی ڕەش ڕەشجلی ڕەشجلی ڕەشجلی جلی ڕەشجلی ڕەشجلی ڕەش',
        images: [
          'https://media.istockphoto.com/photos/women-clothes-hanging-on-hangers-clothing-rails-fashion-design-picture-id916092484?k=20&m=916092484&s=612x612&w=0&h=2aTLAucj_-qbbfhBiJEXfdiY3-k0gx0el8OrKFpi3O8=',
          'https://i.guim.co.uk/img/media/ee6451df50559386d7800dd6fbfda702df6e3ab0/1322_894_5722_3434/master/5722.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=97a008e838919f69743b83a048c1dcc9'
        ],
        categoryId: 'categoryId',
        userId: 'userId',
        initialPrice: 2222,
        currentPrice: 6644,
        lastPrice: 424424,
        estimatedPrice: "22222-33333",
        numViewers: 2334,
        numBids: 33,
        numBidders: 2,
        ebayUrl:
            'https://www.ebay.com/itm/115042689420?hash=item1ac914218c:g:hgkAAOSw46ZgS7WK',
        amazonUrl:
            'https://www.amazon.com/MILLCHIC-Turtlenck-Oversized-Pullover-JH33-8M3-Xiuhong-S/dp/B07YJFQQYD?ref_=Oct_d_old_d_1044456_1&pd_rd_w=s1dCm&pf_rd_p=3a9c4f4a-c01c-4bbb-90b0-d9fb6de0de6f&pf_rd_r=D79RVPHTT5E549SFWD1S&pd_rd_r=c872e82b-c8a7-4f6a-afdf-a8e5f1f96e08&pd_rd_wg=QRSyH',
        isCompleted: false,
        createdAt: '2021-09-01T15:46:31.262Z',
        updatedAt: '2021-10-05T12:16:31.262Z',
      ),
      BidModel(
        id: '100000000000000002',
        nameKr: 'پێڵاوی ڕەش',
        nameEn: 'shoes black',
        nameAr: 'پێڵاوی ڕەش',
        descKr:
            'پێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەش',
        descEn:
            'sho esshoe sshoes shoes shoes shoes shoes shoes shoes shoes shoes shoessho esshoes shoes shoes',
        descAr:
            'پێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەشپێڵاوی ڕەش',
        images: [
          'https://images-na.ssl-images-amazon.com/images/I/41Leu3gBUFL.jpg',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiuSvfjdoGeusSIgLqgCM2yMf1TZPHN0CwybbQF6AJc7hO1qyWpEMY4Bj6USytSgDwcpI&usqp=CAU'
        ],
        categoryId: '1000000000000',
        userId: '1000000000000',
        initialPrice: 111111,
        currentPrice: 22222,
        lastPrice: 33333,
        estimatedPrice: "22222-33333",
        numViewers: 44,
        numBids: 33,
        numBidders: 22,
        ebayUrl:
            'https://www.ebay.com/itm/313679636849?_trkparms=ispr%3D5&hash=item4908c36971:g:mZMAAOSw9IthRarL&amdata=enc%3AAQAGAAACYPYe5NmHp%252B2JMhMi7yxGiTJkPrKr5t53CooMSQt2orsSB0Xm7k0guzAysaIMfJcbBMc9Hes4Hdt%252BIp6hyPIfCiO6nVuqt6lPKayLkSLQlWP2Mgm%252Bl6y0nQ%252BQjXZ6wlo3r2rN8RUfbJ%252BYCu1%252BKwRCehZmeQ6QCK92EJh9wuEzWyBhm4K%252B%252F6ry0dv2cJ%252FGmbAJ1G7UDN3MgUZVfzRJtvD7WyIS2ieWYR3tQyCv4sfI%252BL0IiA1QDHhkU%252FUOlSxZyuAY%252BieFg30PrjTAQH%252FdZYNmylhmEBv6ozvOUt7rkbxTx95avi6rK0ghHhPostHjH8esbIdweUNBfKXK1teL4PIa8JnMOCxYy6JJ8YRPZ2xlXeJnmZFTN9g6H3u6fTjm0Hd6XF1QxXKPXLCzcDdiTqAfuRI6i1kbzjmGXaGQitAMUPvPVJjLW6C7xVvpXirj%252BDt5i%252BL2dHvI8rxWyr7TB2jxWG3cmHFhhm6VvO0OoTnCVmqz3dv15sUjJ3fXcmK4JP3ZhAOUuXR0cY2KJ9SCOuh%252Ft%252FMOers49rcwn5J7W1eRWyfam9n96YVDMB5rZ4J2dPfxHbhVFK1FDDHhfPuz4aHCgCzBNz77stOPqdgexSbluMg9rFe1beHDD34YDpzXd%252BG4YFLFrHoaqnD0CwvUhDscxu6ekFE5eyIrNqxUDJHOJfZePq%252BxZPwGF%252Bq4wWGT5nVqVunlmjQZ227dIprkRKL%252BjPkkGOQ5%252BuidH3gq%252BqssGuiMveO1fjitTSxerKQlXky9xKDBZt0ltGTjnEDXw86F6Qfl4gqMJWDRgDVSbad7O8c3%7Campid%3APLP_CLK%7Cclp%3A2334524',
        amazonUrl:
            'https://www.amazon.com/Rockport-Mens-Eureka-Walking-Brown/dp/B000W93Q1O/ref=sr_1_1?dchild=1&keywords=shoes&qid=1634068620&sr=8-1',
        isCompleted: false,
        createdAt: '2021-10-10T14:46:31.262Z',
        updatedAt: '2021-11-10T16:46:01.262Z',
      ),
    ];
