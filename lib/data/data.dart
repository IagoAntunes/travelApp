import 'package:travelapp/models/categories.dart';
import 'package:travelapp/models/locals.dart';

class Data {
  List<Categories> listaCategorias = [
    Categories(
        name: 'Mountain', image: 'assets/images/categories/mountain.png'),
    Categories(
        name: 'Waterfall', image: 'assets/images/categories/waterfall.png'),
    Categories(name: 'River', image: 'assets/images/categories/river.png'),
    Categories(name: 'Forest', image: 'assets/images/categories/forest.png'),
  ];

  List<Locals> listaPlaces = [
    Locals(
        name: 'Rinjai Mountain',
        localization: 'Lombok Indonesia',
        price: '\$48',
        image: 'assets/images/viagem.png',
        isPopular: false),
    Locals(
        name: 'Bromo Mountain',
        localization: 'East Java, Indonesia',
        price: '\$52',
        image: 'assets/images/viagemdois.jpg',
        isPopular: false),
    Locals(
        name: 'The Pink Beach',
        localization: 'Komodo Island, Indonesia',
        price: '\$48',
        image: 'assets/images/pinkbeach.png',
        isPopular: true),
    Locals(
        name: 'Meru Tower',
        localization: 'Bali, Indonesia',
        price: '\$36',
        image: 'assets/images/merutower.png',
        isPopular: true),
    Locals(
        name: 'Toraja Land',
        localization: 'South Sulawesi, Indonesia',
        price: '42',
        image: 'assets/images/torajaland.png',
        isPopular: true),
  ];
}
