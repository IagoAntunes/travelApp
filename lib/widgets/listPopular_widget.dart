import 'package:flutter/material.dart';

import '../models/locals.dart';
import '../pages/place_screen.dart';

class listPopularDestination extends StatelessWidget {
  const listPopularDestination({
    Key? key,
    required this.listPopularPlaces,
  }) : super(key: key);

  final List<Locals> listPopularPlaces;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (c) {
              return PlaceScreen(
                local: listPopularPlaces[index],
              );
            }));
          },
          child: Card(
            elevation: 0.1,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        listPopularPlaces[index].images[0],
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listPopularPlaces[index].name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 18,
                              color: Colors.blue,
                            ),
                            Text(
                              listPopularPlaces[index].localization,
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '${listPopularPlaces[index].description.substring(0, 28)}....',
                        overflow: TextOverflow.clip,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Text(
                              listPopularPlaces[index].price,
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              ' /Person',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        );
      }),
      separatorBuilder: ((context, index) => const SizedBox(
            height: 2,
          )),
      itemCount: listPopularPlaces.length,
    );
  }
}
