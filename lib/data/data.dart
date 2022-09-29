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
        description:
            'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
        localization: 'Lombok Indonesia',
        price: '\$48',
        images: [
          'assets/images/viagem.png',
          'assets/images/previewImages/previewum.png',
          'assets/images/previewImages/previewdois.png',
          'assets/images/previewImages/previewtres.png',
          'assets/images/previewImages/previewquatro.png'
        ],
        isPopular: false),
    Locals(
        name: 'Bromo Mountain',
        description:
            'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
        localization: 'East Java, Indonesia',
        price: '\$52',
        images: [
          'assets/images/viagemdois.jpg',
          'assets/images/previewImages/previewum.png',
          'assets/images/previewImages/previewdois.png',
          'assets/images/previewImages/previewtres.png',
          'assets/images/previewImages/previewquatro.png'
        ],
        isPopular: false),
    Locals(
        name: 'The Pink Beach',
        description:
            'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
        localization: 'Komodo Island, Indonesia',
        price: '\$48',
        images: [
          'assets/images/pinkbeach.png',
          'assets/images/previewImages/previewum.png',
          'assets/images/previewImages/previewdois.png',
          'assets/images/previewImages/previewtres.png',
          'assets/images/previewImages/previewquatro.png'
        ],
        isPopular: true),
    Locals(
        name: 'Meru Tower',
        description:
            'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
        localization: 'Bali, Indonesia',
        price: '\$36',
        images: [
          'assets/images/merutower.png',
          'assets/images/previewImages/previewum.png',
          'assets/images/previewImages/previewdois.png',
          'assets/images/previewImages/previewtres.png',
          'assets/images/previewImages/previewquatro.png'
        ],
        isPopular: true),
    Locals(
        name: 'Toraja Land',
        description:
            'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
        localization: 'South Sulawesi, Indonesia',
        price: '42',
        images: [
          'assets/images/torajaland.png',
          'assets/images/previewImages/previewum.png',
          'assets/images/previewImages/previewdois.png',
          'assets/images/previewImages/previewtres.png',
          'assets/images/previewImages/previewquatro.png'
        ],
        isPopular: true),
  ];
}
