import 'package:dicoding_flutter_submission/detail/DetailPage.dart';
import 'package:dicoding_flutter_submission/model/RelatedDestination.dart';
import 'package:flutter/material.dart';

class ListWisataTerdekat extends StatelessWidget {
  final List<RelatedDestination> relatedDestination;
  ListWisataTerdekat({@required this.relatedDestination});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: EdgeInsets.only(top: 14),
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: relatedDestination.map((destination) {
            return FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return DetailPage(destinationId: destination.id);
                  },
                ));
              },
              child: SizedBox(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
    );
  }
}
