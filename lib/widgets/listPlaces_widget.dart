import 'package:flutter/material.dart';

import '../models/locals.dart';

class ListPlacesWidget extends StatelessWidget {
  const ListPlacesWidget({
    Key? key,
    required this.listPlaces,
  }) : super(key: key);

  final List<Locals> listPlaces;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      separatorBuilder: ((context, index) => const SizedBox(
            width: 10,
          )),
      itemCount: listPlaces.length,
      itemBuilder: ((context, index) {
        return Container(
            height: 200,
            width: 222,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                image: AssetImage(listPlaces[index].image),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        listPlaces[index].name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        listPlaces[index].price,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        listPlaces[index].localization,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      const Text(
                        '/Person',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ));
      }),
    );
  }
}
