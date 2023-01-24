import 'package:flutter/material.dart';
import 'data.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.9,
                  decoration: const BoxDecoration(
                    color: Color(0xffbccaca),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Center(
                          child: Stack(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 75,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 75,
                                  backgroundColor:
                                      const Color(0xffbccaca).withOpacity(0.5),
                                ),
                              ),
                              Image.network(
                                'https://cdn.accentuate.io/31823129542702/11366956630062/StoJo_200206_Product-68488-v1584383135067.png?936x1160',
                                height: 200,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: const Color(0xff9db1b1),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/shopping-bag-outline.png',
                                  color: Colors.white,
                                  height: 35,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 200,
                                  child: ListView.builder(
                                      itemCount: data.length,
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) {
                                        return index == 2
                                            ? Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: CircleAvatar(
                                                  radius: 12,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                    radius: 2,
                                                    backgroundColor: Color(
                                                        data[index]['color']),
                                                  ),
                                                ),
                                              )
                                            : Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor: Color(
                                                      data[index]['color']),
                                                ),
                                              );
                                      }),
                                ),
                                const Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                    top: 30,
                    left: 10,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Menabo',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Row(children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 5,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Dishwasher safe',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Row(children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 5,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'No phthalates, leads or glues',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Row(children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 5,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'BPA-free, polypropylene lid and  heat sleeve',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                'Size',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              height: 90,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all((index + 1) * 7.0),
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color(0xffbccaca),
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.network(
                          'https://cdn.accentuate.io/31823129542702/11366956630062/StoJo_200206_Product-68488-v1584383135067.png?936x1160',
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(child: Container()),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    r'     $15.00',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(40)),
                        color: Color(0xff9db1b1)),
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 27),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
