import 'package:product_navigator/features/domain/entity.dart';

DataBase dataBase = DataBase();

class DataBase {
  static List<Product> database = [
    Product(
        id: "1",
        name: "One Mebel",
        img: "assets/images/img_one.png",
        price: 50.99,
        description:
            '''Lorem asdasd asd asd asd asd asd asd asd asd asd sad wdef wer ferg rth ry  vfdv sdf vw efv weveqvas asdvsadvasdvs''',
        ball: 4.3),
    Product(
        id: "2",
        name: "Two Mebel",
        img: "assets/images/img_two.png",
        price: 0.99,
        description:
            '''Lorem asdasd asd asd asd asd asd asd asd asd asd sad wdef wer ferg rth ry  vfdv sdf vw efv weveqvas asdvsadvasdvs''',
        ball: 1.3),
    Product(
        id: "3",
        name: "Three Mebel",
        img: "assets/images/img_three.png",
        price: 212.99,
        description:
            '''Lorem asdasd asd asd asd asd asd asd asd asd asd sad wdef wer ferg rth ry  vfdv sdf vw efv weveqvas asdvsadvasdvs''',
        ball: 2.3),
    Product(
        id: "4",
        name: "Four Mebel",
        img: "assets/images/img_four.png",
        price: 12.99,
        description:
            '''Lorem asdasd asd asd asd asd asd asd asd asd asd sad wdef wer ferg rth ry  vfdv sdf vw efv weveqvas asdvsadvasdvs''',
        ball: 3.3),
    Product(
        id: "5",
        name: "Five Mebel",
        img: "assets/images/img_five.png",
        price: 77.99,
        description:
            '''Lorem asdasd asd asd asd asd asd asd asd asd asd sad wdef wer ferg rth ry  vfdv sdf vw efv weveqvas asdvsadvasdvs''',
        ball: 8.3),
    Product(
        id: "6",
        name: "SixMebel",
        img: "assets/images/img_one.png",
        price: 99.99,
        description:
            '''Lorem asdasd asd asd asd asd asd asd asd asd asd sad wdef wer ferg rth ry  vfdv sdf vw efv weveqvas asdvsadvasdvs''',
        ball: 4.5),
  ];
}
