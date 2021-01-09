import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:flutter/material.dart';

class DestinationDescription extends StatelessWidget {
  final DestinationModel destinationModel;
  DestinationDescription({@required this.destinationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16, top: 20, right: 16),
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Deskripsi",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 14),
              child: Text(
                destinationModel.description,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ));
  }
}
