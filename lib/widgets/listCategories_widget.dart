import 'package:flutter/material.dart';

import '../models/categories.dart';

class ListCategoriesWidget extends StatelessWidget {
  const ListCategoriesWidget({
    Key? key,
    required this.listCategories,
  }) : super(key: key);

  final List<Categories> listCategories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Container(
            decoration: const BoxDecoration(
                color: Color(0xffF6F8FA),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(listCategories[index].image),
                  ),
                  Text(
                    listCategories[index].name,
                    style: const TextStyle(
                        color: Color(0xff8D94A2), fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => const SizedBox(width: 10),
        itemCount: listCategories.length);
  }
}
