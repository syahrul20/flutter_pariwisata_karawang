import 'package:dicoding_flutter_submission/data/DestinationData.dart';
import 'package:dicoding_flutter_submission/detail/DestinationDescription.dart';
import 'package:dicoding_flutter_submission/detail/DestinationOtherInfo.dart';
import 'package:dicoding_flutter_submission/detail/DestinationSchedule.dart';
import 'package:dicoding_flutter_submission/detail/ImageHeader.dart';
import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var informationTextSyle = TextStyle(fontSize: 12, color: Colors.black);
var textStyleTitle = TextStyle(color: Colors.black, fontSize: 14);

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
        // backgroundColor: const Color(0xFF212121),
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
                ImageHeader(destinationModel: destinationModel),
                DestinationSchedule(destinationModel: destinationModel),
                DestinationDescription(destinationModel: destinationModel),
                DestinationOtherInfo(destinationModel: destinationModel)
              ],
            )),
          ),
        ));
  }
}