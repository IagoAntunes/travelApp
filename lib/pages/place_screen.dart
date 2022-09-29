import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/models/locals.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key, required this.local});

  final Locals local;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(local.images[0]),
                        fit: BoxFit.cover))),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(50)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(0, 2),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        local.name,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        local.price,
                        style: const TextStyle(
                            fontSize: 28,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 20),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.blue,
                            size: 20,
                          ),
                        ),
                        Text(
                          local.localization,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Text(local.description),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 10),
                    child: Row(
                      children: [
                        const Expanded(
                            child: Text(
                          'Preview',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        )),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade700,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(color: Colors.grey.shade600),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return SizedBox(
                            height: 10,
                            width: 100,
                            child: Image.asset(
                              local.images[index],
                              fit: BoxFit.fill,
                            ));
                      }),
                      itemCount: local.images.length,
                      separatorBuilder: ((context, index) => const SizedBox(
                            width: 5,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text('Book Now'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
        Positioned(
          left: 40,
          top: 20,
          child: SafeArea(
              child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 20,
                )),
          )),
        ),
        Positioned(
          right: 40,
          top: 20,
          child: SafeArea(
              child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                  size: 20,
                )),
          )),
        )
      ]),
    );
  }
}
