import 'package:dicoding_flutter_submission/model/RelatedDestination.dart';

class DestinationModel {
  int id;
  String name;
  String description;
  String location;
  String openTime;
  String cost;
  String openDays;
  String image;
  List<String> imageUrls;
  List<RelatedDestination> relatedDestination;

  DestinationModel(
      {this.id,
      this.name,
      this.description,
      this.location,
      this.openTime,
      this.cost,
      this.openDays,
      this.image,
      this.imageUrls,
      this.relatedDestination});
}
