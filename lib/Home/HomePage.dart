import 'package:dicoding_flutter_submission/detail/DetailPage.dart';
import 'package:dicoding_flutter_submission/home/Favorite.dart';
import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:dicoding_flutter_submission/model/RelatedDestination.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var textStyleTitle = TextStyle(color: Colors.white, fontSize: 14);
var textStyleSubTitle = TextStyle(color: Colors.grey[700], fontSize: 12);

class HomePage extends StatelessWidget {
  List<Widget> generateWidget() {
    List<Widget> _widgets = [];
    for (var i = 0; i < 10; i++) {
      var container = Container(
        margin: EdgeInsets.only(top: 32),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.network("https://picsum.photos/id/${i + 40}/400/500",
                  height: 120, width: 150, fit: BoxFit.cover),
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
                children: destination.map((place) {
                  return FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                destinationModel: place,
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

var destination = [
  DestinationModel(
      id: 1,
      name: "Candi Jiwa",
      description:
          "Candi Jiwa merupakan salah satu situs peninggalan sejarah yang ditemukan di kompleks percandian Batujaya. Candi ini menjadi salah satu peninggalan agama Budha di Karawang. Beberapa sumber menyebutkan bahwa bangunan candi sudah ada sejak masa Kerajaan Tarumanegara antara abad ke-2 sampai dengan abad ke-12 Masehi.",
      location: "Batujaya",
      openTime: "10.00 - 18.00",
      cost: "Rp. 10.000",
      openDays: "Setiap Hari",
      image:
          "http://www.disparbud.jabarprov.go.id/wisata/fimages/SitusBatujaya(CandiJiwa).jpg",
      imageUrls: [
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_1024/v1595498609/wioqsawqsrkicozbuoqf.jpg",
        "https://sikidang.com/wp-content/uploads/Candi-Jiwa-Batujaya.jpg",
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1595498524/us9qtnslshzgmfof3wyx.jpg",
        "https://www.jalajahnusae.com/wp-content/uploads/2020/02/Candi-Jiwa.jpg",
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1595498577/lwujcmzaksresxn8rl7o.jpg"
      ],
      relatedDestination: [
        RelatedDestination(
            id: 2,
            name: "Pantai Tanjung Pakis",
            image:
                "https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-pakis.jpg",
            location: "Pakis Jaya"),
        RelatedDestination(
            id: 3,
            name: "Pantai Sedari",
            image:
                "https://alexanews.id/wp-content/uploads/2019/02/IMG-20190223-WA0164-e1550981398800.jpg",
            location: "Cibuaya"),
        RelatedDestination(
            id: 8,
            name: "Monumen Kebulatan Tekad",
            image:
                "https://www.javatravel.net/wp-content/uploads/2019/07/Monumen-Kebulatan-Tekad-Rengasdengklok.jpg",
            location: "Rengas Dengklok"),
      ]),
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
