import 'package:flutter/material.dart';
import 'package:travelapp/models/categories.dart';
import 'package:travelapp/models/locals.dart';
import 'package:travelapp/pages/place_screen.dart';

import 'data/data.dart';
import 'widgets/listCategories_widget.dart';
import 'widgets/listPlaces_widget.dart';
import 'widgets/listPopular_widget.dart';

void main() {
  runApp(const HomeTravel());
}

class HomeTravel extends StatefulWidget {
  const HomeTravel({super.key});

  @override
  State<HomeTravel> createState() => _HomeTravelState();
}

class _HomeTravelState extends State<HomeTravel> {
  final List<Categories> listCategories = Data().listaCategorias;

  final List<Locals> listPlaces = Data().listaPlaces;
  final List<Locals> listPopularPlaces =
      Data().listaPlaces.where((element) => element.isPopular == true).toList();
  int atualIndex = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: atualIndex == 0 ? null : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.health_and_safety,
                color: atualIndex == 1 ? null : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: atualIndex == 2 ? null : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: atualIndex == 3 ? null : Colors.grey,
              ),
              label: '',
            ),
          ],
          currentIndex: atualIndex,
          elevation: 30,
          selectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              atualIndex = index;
            });
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: (() {}),
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffF6F8FA),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.menu,
                        color: Color(0xffCBCBCB),
                      )),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Current Location',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey.shade500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              size: 20,
                              Icons.location_on,
                              color: Color(0xff1C9FE2),
                            ),
                          ),
                          Text(
                            'Denpasar, Brasil',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/perfil.png',
                  fit: BoxFit.fill,
                ),
              ]),
              //Menu List Categoria
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Category',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: const [
                            Text(
                              'View All',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 15,
                              color: Colors.blue,
                            )
                          ],
                        )
                      ],
                    ),

                    //List Categorias
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 5),
                      child: SizedBox(
                        height: 50,
                        child: ListCategoriesWidget(
                            listCategories: listCategories),
                      ),
                    ),

                    //List Places
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 150,
                            child: ListPlacesWidget(
                                listPlaces: listPlaces
                                    .where(
                                        (element) => element.isPopular == false)
                                    .toList()),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              //Menu Popular Destination
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Popular Destination',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: const [
                              Text(
                                'View All',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.blue),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 15,
                                color: Colors.blue,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    //List Popular Destination
                    Column(
                      children: [
                        SizedBox(
                            height: 270,
                            child: listPopularDestination(
                                listPopularPlaces: listPopularPlaces))
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
