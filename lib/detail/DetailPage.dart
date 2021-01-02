import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var informationTextSyle = TextStyle(fontSize: 12, color: Colors.white);
var textStyleTitle = TextStyle(color: Colors.white, fontSize: 14);

class DetailPage extends StatelessWidget {
  final DestinationModel destinationModel;

  DetailPage({@required this.destinationModel});

  // double getWidthFromImage(String urlImage) async {
  //   File image = new File(urlImage);
  //   var decodeImage = await decodeImageFromList(image.readAsBytesSync());
  //   return decodeImage.width.toDouble();
  // }

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
                        margin: EdgeInsets.only(top: 14),
                        child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: destinationModel.relatedDestination
                                .map((destination) {
                              debugPrint('data: $destination');
                              return Padding(
                                  padding: EdgeInsets.all(8),
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
                                      )));
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
