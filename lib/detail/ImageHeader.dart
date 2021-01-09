import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  final DestinationModel destinationModel;
  ImageHeader({@required this.destinationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
              child: Image.network(
                destinationModel.image,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).size.height / 2.5),
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
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
                          style: TextStyle(color: Colors.white, fontSize: 16))
                    ],
                  ),
                ),
              ],
            ))
          ],
        )
      ],
    ));
  }
}
