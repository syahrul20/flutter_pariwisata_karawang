import 'package:dicoding_flutter_submission/Home/Favorite.dart';
import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // List<Widget> widgets = [];

  List<Widget> generateWidget() {
    List<Widget> _widgets = [];
    for (var i = 0; i < 10; i++) {
      var container = Container(
        margin: EdgeInsets.only(top: 32),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                      "https://picsum.photos/id/${i + 40}/400/500",
                      height: 120,
                      width: 150,
                      fit: BoxFit.cover),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Nama Tempat Wisata adasd"),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("Lokasi Tempat Wisata"),
                    )
                  ],
                ),
              ),
            ),
            FavoriteButton()
          ],
        ),
      );
      _widgets.add(container);
    }
    return _widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[700],
          centerTitle: true,
          title: Text("Pariwisata Karawang"),
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ListView(
              children: destination.map((place) {
                return FlatButton(
                    onPressed: null,
                    child: Container(
                      margin: EdgeInsets.only(top: 32),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                    style: TextStyle(color: Colors.grey[800]),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(place.location,
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12)),
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
            )));
  }
}

var destination = [
  DestinationModel(
      id: 1,
      name: "Candi Jiwa",
      description: "",
      location: "Batujaya",
      openTime: "10.00 - 18.00",
      cost: "Rp. 5.000 - Rp.25.000",
      openDays: "Senin - Minggu",
      image:
          "http://www.disparbud.jabarprov.go.id/wisata/fimages/SitusBatujaya(CandiJiwa).jpg",
      imageUrls: [],
      relatedDestination: []),
  DestinationModel(
      id: 2,
      name: "Pantai Tanjung Pakis",
      description: "",
      location: "Pakis Jaya",
      openTime: "09.00 - 18.00",
      cost: "Rp. 10.000 - Rp.20.000",
      openDays: "Senin - Minggu",
      image:
          "https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-pakis.jpg",
      imageUrls: [],
      relatedDestination: []),
  DestinationModel(
      id: 3,
      name: "Pantai Sedari",
      description: "",
      location: "Cibuaya",
      openTime: "09.00 - 18.00",
      cost: "Rp. 10.000 - Rp.20.000",
      openDays: "Senin - Minggu",
      image:
          "https://alexanews.id/wp-content/uploads/2019/02/IMG-20190223-WA0164-e1550981398800.jpg",
      imageUrls: [],
      relatedDestination: []),
  DestinationModel(
      id: 4,
      name: "Curug Cigeuntis",
      description: "",
      location: "Tegalwaru",
      openTime: "09.00 - 18.00",
      cost: "Rp. 10.000 - Rp.20.000",
      openDays: "Senin - Minggu",
      image:
          "https://www.javatravel.net/wp-content/uploads/2020/05/Curug-Cigentis-Karawang.jpg",
      imageUrls: [],
      relatedDestination: []),
  DestinationModel(
      id: 5,
      name: "Curug Bandung",
      description: "",
      location: "Tegalwaru",
      openTime: "09.00 - 18.00",
      cost: "Rp. 10.000 - Rp.20.000",
      openDays: "Senin - Minggu",
      image:
          "https://www.javatravel.net/wp-content/uploads/2019/07/Curug-Bandung.jpg",
      imageUrls: [],
      relatedDestination: []),
  DestinationModel(
      id: 6,
      name: "Wisata Puncak Sempur",
      description: "",
      location: "Tegalwaru",
      openTime: "09.00 - 18.00",
      cost: "Rp. 10.000 - Rp.20.000",
      openDays: "Senin - Minggu",
      image: "https://correcto.id/content/images/th1_2020063007320458321.jpg",
      imageUrls: [],
      relatedDestination: []),
  DestinationModel(
      id: 7,
      name: "Wisata Hutan Kertas",
      description: "",
      location: "Ciampel",
      openTime: "09.00 - 18.00",
      cost: "Rp. 10.000 - Rp.20.000",
      openDays: "Senin - Minggu",
      image:
          "https://rimbakita.com/wp-content/uploads/2019/10/hutan-kertas-karawang.jpg",
      imageUrls: [],
      relatedDestination: []),
  DestinationModel(
      id: 8,
      name: "Monumen Kebulatan Tekad",
      description: "",
      location: "Rengasdengklok",
      openTime: "09.00 - 18.00",
      cost: "Rp. 10.000 - Rp.20.000",
      openDays: "Senin - Minggu",
      image:
          "https://www.javatravel.net/wp-content/uploads/2019/07/Monumen-Kebulatan-Tekad-Rengasdengklok.jpg",
      imageUrls: [],
      relatedDestination: []),
  DestinationModel(
      id: 9,
      name: "Wisata Pohon Miring",
      description: "",
      location: "Pancawati",
      openTime: "09.00 - 18.00",
      cost: "Rp. 10.000 - Rp.20.000",
      openDays: "Senin - Minggu",
      image:
          "https://pariwisataku.com/wp-content/uploads/2019/08/pohonmiringpancawati-wildrism-1024x732.jpg",
      imageUrls: [],
      relatedDestination: []),
  DestinationModel(
      id: 10,
      name: "Wonderland Adventure Waterpark",
      description: "",
      location: "Telukjambe Timur",
      openTime: "09.00 - 18.00",
      cost: "Rp. 10.000 - Rp.20.000",
      openDays: "Senin - Minggu",
      image:
          "https://i2.wp.com/piknikasyik.com/wp-content/uploads/2018/04/harga-tiket-masuk-wonderland-adventure-waterpark-karawang-terbaru.jpg",
      imageUrls: [],
      relatedDestination: []),
];
