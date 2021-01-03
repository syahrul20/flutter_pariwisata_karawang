import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:dicoding_flutter_submission/model/RelatedDestination.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var informationTextSyle = TextStyle(fontSize: 12, color: Colors.white);
var textStyleTitle = TextStyle(color: Colors.white, fontSize: 14);

class DetailPage extends StatefulWidget {
  final int destinationId;
  const DetailPage({Key key, this.destinationId}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  DestinationModel destinationModel;

  DestinationModel getData(int dataId) {
    return destinations.firstWhere((element) => element.id == dataId);
  }

  @override
  void initState() {
    super.initState();
    destinationModel = getData(widget.destinationId);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
        backgroundColor: const Color(0xFF212121),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Builder(
          builder: (context) => AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    child: Stack(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(80)),
                          child: Image.network(
                            destinationModel.image,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height -
                                (MediaQuery.of(context).size.height / 2.5),
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(80)),
                          child: Container(
                            height: MediaQuery.of(context).size.height -
                                (MediaQuery.of(context).size.height / 2.5),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0xCC000000),
                                  const Color(0x00000000),
                                  const Color(0x00000000),
                                  const Color(0xCC000000),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SafeArea(
                            child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height -
                                  (MediaQuery.of(context).size.height / 1.9),
                              margin: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(destinationModel.name,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  Text(destinationModel.location,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16))
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    )
                  ],
                )),
                Container(
                  margin: EdgeInsets.only(top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.calendar_today, color: Colors.white),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Text(
                              destinationModel.openDays,
                              style: informationTextSyle,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.access_time, color: Colors.white),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Text(destinationModel.openTime,
                                style: informationTextSyle),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.monetization_on, color: Colors.white),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Text(destinationModel.cost,
                                style: informationTextSyle),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 16, top: 20),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Deskripsi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 14),
                          child: Text(
                            destinationModel.description,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Foto Lainnya",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14),
                        height: 100,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children:
                                destinationModel.imageUrls.map((urlImage) {
                              return Padding(
                                  padding: EdgeInsets.all(8),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Image.network(
                                      urlImage,
                                      fit: BoxFit.cover,
                                    ),
                                  ));
                            }).toList()),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text(
                          "Wisata Terdekat Lainnya",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 170,
                        margin: EdgeInsets.only(top: 14),
                        child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: destinationModel.relatedDestination
                                .map((destination) {
                              return FlatButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return DetailPage(
                                          destinationId: destination.id);
                                    },
                                  ));
                                },
                                child: SizedBox(
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          child: Image.network(
                                            destination.image,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 16),
                                          child: Text(
                                            // "asdasdasd asdasdasdsad",
                                            destination.name,
                                            style: textStyleTitle,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        )
                                      ],
                                    )),
                              );
                            }).toList()),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}

var destinations = [
  DestinationModel(
      id: 1,
      name: "Candi Jiwa",
      description:
          "Candi Jiwa merupakan salah satu situs peninggalan sejarah yang ditemukan di kompleks percandian Batujaya. Candi ini menjadi salah satu peninggalan agama Budha di Karawang. Beberapa sumber menyebutkan bahwa bangunan candi sudah ada sejak masa Kerajaan Tarumanegara antara abad ke-2 sampai dengan abad ke-12 Masehi.",
      location: "Batujaya",
      openTime: "10.00 - 18.00",
      cost: "Rp. 5.000",
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
                "https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-pakis.jpg"),
        RelatedDestination(
            id: 3,
            name: "Pantai Sedari",
            image:
                "https://alexanews.id/wp-content/uploads/2019/02/IMG-20190223-WA0164-e1550981398800.jpg"),
        RelatedDestination(
            id: 8,
            name: "Monumen Kebulatan Tekad",
            image:
                "https://www.javatravel.net/wp-content/uploads/2019/07/Monumen-Kebulatan-Tekad-Rengasdengklok.jpg"),
      ]),
  DestinationModel(
      id: 2,
      name: "Pantai Tanjung Pakis",
      description:
          "Pantai Tanjung Pakis adalah sebuah tempat wisata yang terletak di Kabupaten Karawang, Jawa Barat. Lebih tepatnya berada di Desa Tanjung Pakis, atau berjarak sekitar 70 km dari pusat Kabupaten Karawang. Pantai dengan panjang mencapai 7 km dan luas 350 hektare ini meliputi wilayah Bungin, Karangjaya, hingga Pakis I. Untuk berwisata ke Pantai Pakis, pengunjung memang dikenakan tiket masuk, namun harganya cukup terjangkau.",
      location: "Pakis Jaya",
      openTime: "07.00 - 17.00",
      cost: "Rp. 10.000 - Rp.30.000",
      openDays: "Setiap Hari",
      image:
          "https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-pakis.jpg",
      imageUrls: [
        "https://www.pantainesia.com/wp-content/uploads/2018/07/tanjung-pakis-990x558.jpg",
        "https://cdn-2.tstatic.net/wartakotatravel/foto/bank/images/pantai-tanjung-pakis-1.jpg",
      ],
      relatedDestination: [
        RelatedDestination(
          id: 1,
          name: "Candi Jiwa",
          image:
              "http://www.disparbud.jabarprov.go.id/wisata/fimages/SitusBatujaya(CandiJiwa).jpg",
        ),
        RelatedDestination(
            id: 8,
            name: "Monumen Kebulatan Tekad",
            image:
                "https://www.javatravel.net/wp-content/uploads/2019/07/Monumen-Kebulatan-Tekad-Rengasdengklok.jpg"),
        RelatedDestination(
            id: 3,
            name: "Pantai Sedari",
            image:
                "https://alexanews.id/wp-content/uploads/2019/02/IMG-20190223-WA0164-e1550981398800.jpg"),
      ]),
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
