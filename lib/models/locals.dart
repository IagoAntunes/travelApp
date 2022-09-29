class Locals {
  Locals(
      {required this.name,
      required this.description,
      required this.localization,
      required this.price,
      required this.images,
      required this.isPopular});

  String name;
  String description;
  String localization;
  String price;
  List<String> images;
  bool isPopular;
}
