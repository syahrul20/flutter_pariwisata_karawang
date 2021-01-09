import 'package:dicoding_flutter_submission/detail/ListWisataTerdekat.dart';
import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:flutter/material.dart';

class DestinationOtherInfo extends StatelessWidget {
  final DestinationModel destinationModel;
  DestinationOtherInfo({@required this.destinationModel});

  Widget getWidget() {
    if (destinationModel.relatedDestination.isEmpty) {
      return Container(
          padding: EdgeInsets.only(top: 14, bottom: 16),
          child: Text("Data Belum tersedia",
              style: TextStyle(fontSize: 16, color: Colors.black)));
    } else {
      return ListWisataTerdekat(
          relatedDestination: destinationModel.relatedDestination);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 20),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Foto Lainnya",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            height: 100,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: destinationModel.imageUrls.map((urlImage) {
                  return Padding(
                      padding: EdgeInsets.all(8),
                      child: GestureDetector(
                        child: Hero(
                            tag: urlImage,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.network(
                                urlImage,
                                fit: BoxFit.cover,
                              ),
                            )),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return ImageDetail(urlImage: urlImage);
                          }));
                        },
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
                  color: Colors.black),
            ),
          ),
          getWidget()
        ],
      ),
    );
  }
}

class ImageDetail extends StatelessWidget {
  final String urlImage;
  ImageDetail({@required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: urlImage,
            child: Image.network(
              urlImage,
            ),
          ),
        ),
        // onTap: () {
        //   Navigator.pop(context);
        // },
      ),
    );
  }
}
