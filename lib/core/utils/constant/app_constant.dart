
import 'package:technicaltask/core/utils/assets/app_assets.dart';
import 'package:technicaltask/feature/home/data/venue_model.dart';

List<VenueModel> venues = [
  VenueModel(
    name: "Ceano",
    type: "Nikke",
    image: AppAssets.ceano,
    height: 180, hasBlur: false,
  ),
  VenueModel(
    name: "Nobiko",
    type: "Restaurant",
    image: AppAssets.nobiko,
    height: 220, hasBlur: false,
  ),
  VenueModel(
    name: "Dovely",
    type: "Casual",
    image: AppAssets.dovely,
    height: 220, hasBlur: true,
  ),
    VenueModel(
    name: "Olivestree",
    type: "Bakery",
    image: AppAssets.olivestree,
    height: 180, hasBlur: true,
  ),
  

];