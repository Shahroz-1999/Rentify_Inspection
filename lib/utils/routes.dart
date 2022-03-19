import 'package:rentify_inspection/screens/inspection/Inspection_dashboard.dart';
import 'package:rentify_inspection/screens/inspection/user_approval.dart';
import 'package:rentify_inspection/screens/inspection/product_approval.dart';
import 'package:rentify_inspection/screens/inspection/Inspection_insert.dart';
import 'package:rentify_inspection/screens/inspection/Inspection_team.dart';

getRoutes() {
  return {
    //Inspection
    "/InsDB": (context) => InspectionDashboard(),
    "/UserApproval": (context) => UserApproval(),
    "/RentalApproval": (context) => RentalApproval(),
    "/InsInsert": (context) => InspectionInsert(),
    "/InsTeam": (context) => InspectionTeam(),
  };
}