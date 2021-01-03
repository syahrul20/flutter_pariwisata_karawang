import 'package:dicoding_flutter_submission/detail/DetailPage.dart';
import 'package:dicoding_flutter_submission/home/Favorite.dart';
import 'package:dicoding_flutter_submission/model/DestinationList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var textStyleTitle = TextStyle(color: Colors.white, fontSize: 14);
var textStyleSubTitle = TextStyle(color: Colors.grey[700], fontSize: 12);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF212121),
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Pariwisata Karawang"),
        ),
        body: Builder(
          builder: (context) => Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ListView(
                children: destinations.map((place) {
                  return FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                destinationId: place.id,
                              ),
                            ));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.grey[850],
                        margin: EdgeInsets.only(top: 32),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.network(place.image,
                                  // "https://picsum.photos/id/${i + 40}/400/500",
                                  height: 120,
                                  width: 150,
                                  fit: BoxFit.cover),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      place.name,
                                      style: textStyleTitle,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(place.location,
                                          style: textStyleSubTitle),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            FavoriteButton()
                          ],
                        ),
                      ));
                }).toList(),
              )),
        ));
  }
}

var destinations = [
  DestinationList(
    id: 1,
    name: "Candi Jiwa",
    location: "Batujaya",
    image:
        "http://www.disparbud.jabarprov.go.id/wisata/fimages/SitusBatujaya(CandiJiwa).jpg",
  ),
  DestinationList(
    id: 2,
    name: "Pantai Tanjung Pakis",
    location: "Pakis Jaya",
    image:
        "https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-pakis.jpg",
  ),
  DestinationList(
    id: 3,
    name: "Pantai Sedari",
    location: "Cibuaya",
    image:
        "https://alexanews.id/wp-content/uploads/2019/02/IMG-20190223-WA0164-e1550981398800.jpg",
  ),
  DestinationList(
    id: 4,
    name: "Curug Cigeuntis",
    location: "Tegalwaru",
    image:
        "https://www.javatravel.net/wp-content/uploads/2020/05/Curug-Cigentis-Karawang.jpg",
  ),
  DestinationList(
    id: 5,
    name: "Curug Bandung",
    location: "Tegalwaru",
    image:
        "https://www.javatravel.net/wp-content/uploads/2019/07/Curug-Bandung.jpg",
  ),
  DestinationList(
    id: 6,
    name: "Wisata Puncak Sempur",
    location: "Tegalwaru",
    image: "https://correcto.id/content/images/th1_2020063007320458321.jpg",
  ),
  DestinationList(
    id: 7,
    name: "Wisata Hutan Kertas",
    location: "Ciampel",
    image:
        "https://rimbakita.com/wp-content/uploads/2019/10/hutan-kertas-karawang.jpg",
  ),
  DestinationList(
    id: 8,
    name: "Monumen Kebulatan Tekad",
    location: "Rengasdengklok",
    image:
        "https://www.javatravel.net/wp-content/uploads/2019/07/Monumen-Kebulatan-Tekad-Rengasdengklok.jpg",
  ),
  DestinationList(
    id: 9,
    name: "Wisata Pohon Miring",
    location: "Pancawati",
    image:
        "https://pariwisataku.com/wp-content/uploads/2019/08/pohonmiringpancawati-wildrism-1024x732.jpg",
  ),
  DestinationList(
    id: 10,
    name: "Wonderland Adventure Waterpark",
    location: "Telukjambe Timur",
    image:
        "https://i2.wp.com/piknikasyik.com/wp-content/uploads/2018/04/harga-tiket-masuk-wonderland-adventure-waterpark-karawang-terbaru.jpg",
  ),
];
