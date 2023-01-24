import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'data.dart';
import 'item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 2, 25, 0),
              child: Row(
                children: [
                  Image.asset(
                    'images/carbox.png',
                    height: 100,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  const FaIcon(FontAwesomeIcons.magnifyingGlass),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Популарни производи',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  Text(
                    'Види ги сите',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 20,
                            childAspectRatio: 0.73),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Item(),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Color(data[index]['color']),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Stack(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8),
                                        child: CircleAvatar(
                                          radius: 55,
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundColor:
                                              Color(data[index]['color'])
                                                  .withOpacity(0.6),
                                        ),
                                      ),
                                      Image.network(
                                        data[index]['image'],
                                        height: 160,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Text(data[index]['name'],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400)),
                            Text(
                              r'$' + data[index]['price'],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
