import 'package:dicoding_flutter_submission/data/DestinationListData.dart';
import 'package:dicoding_flutter_submission/detail/DetailPage.dart';
import 'package:dicoding_flutter_submission/home/Favorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var textStyleTitle = TextStyle(color: Colors.grey[800], fontSize: 14);
var textStyleSubTitle = TextStyle(color: Colors.grey[700], fontSize: 12);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color(0xFF212121),
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[700],
          centerTitle: true,
          title: Text("Pariwisata Karawang"),
        ),
        body: Builder(
            builder: (context) => Container(
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
                          // color: Colors.grey[850],
                          margin: EdgeInsets.only(top: 16, bottom: 16),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                ))));
  }
}