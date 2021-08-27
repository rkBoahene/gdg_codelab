import 'package:flutter/material.dart';
import 'package:gdg_codelab/widgets/rating.dart';

const Color mainThemeColor = Color(0xFF272D8D);

class Attraction {
  String? imgPath;
  String? name;
  String? desc;
  double? price;
  String? location;
  int? rating;

  Attraction(
      {this.imgPath,
      this.name,
      this.desc,
      this.location,
      this.price,
      this.rating});
}

final List<Attraction> attractionsList = [
  Attraction(
      imgPath:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/275162028.jpg?k=38b638c8ec9ec86624f9a598482e95fa634d49aa3f99da1838cf5adde1a14521&o=&hp=1',
      name: 'Grand Bavaro Princess',
      desc: 'All-Inclusive Resort',
      location: 'Punta Cana, DR',
      rating: 3,
      price: 80.0),
  Attraction(
      imgPath:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/232161008.jpg?k=27808fe44ab95f6468e5433639bf117032c8271cebf5988bdcaa0a202b9a6d79&o=&hp=1',
      name: 'Hyatt Ziva Cap Cana',
      desc: 'All-Inclusive Resort',
      price: 90.0,
      rating: 4,
      location: 'Punta Cana, DR'),
  Attraction(
      imgPath:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/256931299.jpg?k=57b5fb9732cd89f308def5386e221c46e52f48579345325714a310addf819274&o=&hp=1',
      name: 'Impressive Punta Cana',
      desc: 'All-Inclusive Resort',
      price: 100.0,
      rating: 5,
      location: 'Punta Cana, DR'),
  Attraction(
      imgPath:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/283750757.jpg?k=4f3437bf1e1b077463c9900e4dd015633db1d96da38f034f4b70a4ba3ef76d82&o=&hp=1',
      name: 'Villas Mar Azul Dreams',
      desc: 'All-Inclusive Resort',
      price: 100.0,
      rating: 4,
      location: 'Tallaboa, PR'),
];

class AttractionCard extends StatelessWidget {
  Attraction? attraction;
  AttractionCard({this.attraction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.1),
                offset: Offset.zero)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: 300,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(attraction!.imgPath!),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 150,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              attraction!.name!,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  color: Colors.grey.withOpacity(0.7),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  attraction!.location!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.withOpacity(0.7),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 5),
                            RatingWidget(
                              rating: attraction!.rating!,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '\$${attraction!.price!.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Per night',
                              style: TextStyle(
                                color: Colors.grey.withOpacity(0.7),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: mainThemeColor,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: mainThemeColor,
                        offset: Offset.zero,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
