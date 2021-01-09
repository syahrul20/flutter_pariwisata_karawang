import 'package:dicoding_flutter_submission/detail/DetailPage.dart';
import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:flutter/material.dart';

class DestinationSchedule extends StatelessWidget {
  final DestinationModel destinationModel;
  DestinationSchedule({@required this.destinationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.calendar_today, color: Colors.black),
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
              Icon(Icons.access_time, color: Colors.black),
              Container(
                margin: EdgeInsets.only(top: 12),
                child:
                    Text(destinationModel.openTime, style: informationTextSyle),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.monetization_on, color: Colors.black),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: Text(destinationModel.cost, style: informationTextSyle),
              )
            ],
          ),
        ],
      ),
    );
  }
}
