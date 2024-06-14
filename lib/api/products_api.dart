import 'dart:math';

import 'package:collection/collection.dart';

class ProductsAPI {
  static final List<Map<String, dynamic>> _products = [
    {
      'id': 1,
      'user_id': 1,
      'name': '"Молоко 3,2% для дітей Яготинське т/п 1000g',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4823005203742",
      "code": "E101",
    },
    {
      'id': 2,
      'user_id': 1,
      'name': 'Масло Бутербродне ферма 63%',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4820239242806",
      "code": "E230",
    },
    {
      'id': 3,
      'user_id': 1,
      'name':
          'name": "Крекер зі смаком цибулі та сметани The Crackers Yarych м/y 80g',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4820154483841",
      "code": "E231",
    },
    {
      'id': 4,
      'user_id': 1,
      'name': 'Макаронні вироби PASTA PRIMA 800g',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4820156761619",
      "code": "E232",
    },
    {
      'id': 5,
      'user_id': 1,
      'name': 'Борошно пшеничне Зерновита м/y 2кg.',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4820197780150",
      "code": "E233",
    },
    {
      'id': 6,
      'user_id': 1,
      'name': 'Олія оливкова Arioli Extra Virgen 500мл',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "8004825008007",
      "code": "E234",
    },
    {
      'id': 7,
      'user_id': 1,
      'name': 'Крупа гречана ядриця Зерновита м/y 1кg',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4820197780730",
      "code": "E235",
    },
    {
      'id': 8,
      'user_id': 1,
      'name': 'Паштет курячий з журавлиною Екстра Шпік лоток 130g',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4820038920219",
      "code": "E236",
    },
    {
      'id': 9,
      'user_id': 1,
      'name': 'Паштет курячий з журавлиною Екстра Шпік лоток 130g',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "5907670901468",
      "code": "E237",
    },
    {
      'id': 10,
      'user_id': 1,
      'name': 'Маслини чорні без кісточки Lorado з/б 314мл',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4008638275131",
      "code": "E238",
    },
    {
      'id': 11,
      'user_id': 1,
      'name': 'Маслини чорні без кісточки Lorado з/б 314мл',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4820234610211",
      "code": "E239",
    },
    {
      'id': 12,
      'user_id': 1,
      'name':
          'Трубочки мультизлакові зі справжнім сиром Yellow Cheese Brunch м/y 120g',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4823105805280",
      "code": "E240",
    },
    {
      'id': 13,
      'user_id': 1,
      'name': 'ЧІПСИ PRINGLES ПАПРИКА',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "5053990161614",
      "code": "E243",
    },
    {
      'id': 14,
      'user_id': 1,
      'name': 'ПЕЧИВО Oreo 176g',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "7622300444181",
      "code": "E244",
    },
    {
      'id': 15,
      'user_id': 1,
      'name': 'ЯЙЦЯ КУРЯЧІ 10ШT',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4820261650082",
      "code": "E245",
    },
    {
      'id': 16,
      'user_id': 1,
      'name': 'ПОПКОРН З СІЛЛЮ BOOMZA! M/Y 30Г',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4820196732051",
      "code": "E246",
    },
    {
      'id': 17,
      'user_id': 1,
      'name': 'МОРОЗИВО ДЕСЕРТ-МОРОЗИВО РУДЬ M/Y 400Г',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      "barcode": "4823097812648",
      "code": "E248",
    },
    {
      'id': 18,
      'user_id': 1,
      'name': 'Хліб нарізний білий',
      'brand': 'Кулиничі',
      'weight': '500 г',
      'barcode': '4820010400018',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E267',
    },
    {
      'id': 19,
      'user_id': 1,
      'name': 'Молоко ультрапастеризоване',
      'brand': 'Галичина',
      'weight': '1 л',
      'barcode': '4820098000023',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E268',
    },
    {
      'id': 20,
      'user_id': 1,
      'name': 'Яйця курячі',
      'brand': 'Ясенсвіт',
      'weight': '10 шт',
      'barcode': '4820089700084',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E269',
    },
    {
      'id': 21,
      'user_id': 1,
      'name': 'Ковбаса варена докторська',
      'brand': 'Ятрань',
      'weight': '500 г',
      'barcode': '4820028980017',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E270',
    },
    {
      'id': 22,
      'user_id': 1,
      'name': 'Сметана 15%',
      'brand': 'Президент',
      'weight': '400 г',
      'barcode': '4820020700351',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E271',
    },
    {
      'id': 23,
      'user_id': 1,
      'name': 'Масло вершкове 82%',
      'brand': 'Ферма',
      'weight': '200 г',
      'barcode': '4820022350035',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E272',
    },
    {
      'id': 24,
      'user_id': 1,
      'name': 'Сир кисломолочний 5%',
      'brand': 'Яготинське',
      'weight': '300 г',
      'barcode': '4820010401008',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E273',
    },
    {
      'id': 25,
      'user_id': 1,
      'name': 'Цукор білий',
      'brand': 'АРТЕК',
      'weight': '1 кг',
      'barcode': '4820020023003',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E274',
    },
    {
      'id': 26,
      'user_id': 1,
      'name': 'Макарони спіраль',
      'brand': 'Чумак',
      'weight': '400 г',
      'barcode': '4820011350017',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E275',
    },
    {
      'id': 27,
      'user_id': 1,
      'name': 'Крупа гречана',
      'brand': 'Хуторок',
      'weight': '900 г',
      'barcode': '4820019000013',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E276',
    },
    {
      'id': 28,
      'user_id': 1,
      'name': 'Олія соняшникова',
      'brand': 'Щедрий Дар',
      'weight': '1 л',
      'barcode': '4820028980028',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E277',
    },
    {
      'id': 29,
      'user_id': 1,
      'name': 'Майонез Провансаль',
      'brand': 'Торчин',
      'weight': '380 г',
      'barcode': '4820020700122',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E278',
    },
    {
      'id': 30,
      'user_id': 1,
      'name': 'Кетчуп класичний',
      'brand': 'Торчин',
      'weight': '300 г',
      'barcode': '4820020700214',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E279',
    },
    {
      'id': 31,
      'user_id': 1,
      'name': 'Вода мінеральна негазована',
      'brand': 'Моршинська',
      'weight': '1.5 л',
      'barcode': '4820002330012',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E280',
    },
    {
      'id': 32,
      'user_id': 1,
      'name': 'Сік яблучний',
      'brand': 'Садочок',
      'weight': '1 л',
      'barcode': '4820030800015',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E281',
    },
    {
      'id': 33,
      'user_id': 1,
      'name': 'Печиво Марія',
      'brand': 'Київхліб',
      'weight': '300 г',
      'barcode': '4820011350108',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E282',
    },
    {
      'id': 34,
      'user_id': 1,
      'name': 'Шоколад молочний',
      'brand': 'Корона',
      'weight': '90 г',
      'barcode': '4820028980035',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E283',
    },
    {
      'id': 35,
      'user_id': 1,
      'name': 'Кава мелена',
      'brand': 'Галка',
      'weight': '250 г',
      'barcode': '4820020023400',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E284',
    },
    {
      'id': 36,
      'user_id': 1,
      'name': 'Чай чорний байховий',
      'brand': 'Тет',
      'weight': '100 г',
      'barcode': '4820002330029',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E285',
    },
    {
      'id': 37,
      'user_id': 1,
      'name': 'Варення абрикосове',
      'brand': 'Верес',
      'weight': '400 г',
      'barcode': '4820030800022',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E286',
    },
    {
      'id': 38,
      'user_id': 1,
      'name': 'Кукурудзяні пластівці',
      'brand': 'Нордик',
      'weight': '500 г',
      'barcode': '4820020700377',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E287',
    },
    {
      'id': 39,
      'user_id': 1,
      'name': 'Горілка',
      'brand': 'Хортиця',
      'weight': '0.5 л',
      'barcode': '4820020023805',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E288',
    },
    {
      'id': 40,
      'user_id': 1,
      'name': 'Пиво світле',
      'brand': 'Оболонь',
      'weight': '0.5 л',
      'barcode': '4820020700490',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E289',
    },
    {
      'id': 41,
      'user_id': 1,
      'name': 'Соус соєвий',
      'brand': 'Кіккоман',
      'weight': '250 мл',
      'barcode': '4820020024000',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E290',
    },
    {
      'id': 41,
      'user_id': 1,
      'name': 'Соус соєвий',
      'brand': 'Кіккоман',
      'weight': '250 мл',
      'barcode': '4820020024000',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E290',
    },
    {
      'id': 42,
      'user_id': 1,
      'name': 'Кетчуп томатний',
      'brand': 'Чумак',
      'weight': '500 г',
      'barcode': '4820011350095',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E291',
    },
    {
      'id': 43,
      'user_id': 1,
      'name': 'Сир моцарелла',
      'brand': 'Ферма',
      'weight': '200 г',
      'barcode': '4820022350012',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E292',
    },
    {
      'id': 44,
      'user_id': 1,
      'name': 'Мед натуральний',
      'brand': 'Бджолинець',
      'weight': '500 г',
      'barcode': '4820010402005',
      'image': 'https://picsum.photos/200/300/?1',
      'description':
          'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
      'ingredients': ['juice', 'sugar', 'water'],
      'code': 'E293',
    },
  ];

  static Map<String, dynamic>? findProductByBarcode(String barcode) {
    final product = _products.firstWhereOrNull(
      (product) => product['barcode'] == barcode,
    );

    return product != null ? Map<String, dynamic>.from(product) : null;
  }

  static Future<List<Map<String, dynamic>>> searchProducts(String query) async {
    return Future.delayed(Duration(milliseconds: Random().nextInt(500)), () {
      return _products.where((product) {
        return product['name'].toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  static Future<void> addProduct(Map<String, dynamic> product) async {
    _products.add(product);
  }
}
