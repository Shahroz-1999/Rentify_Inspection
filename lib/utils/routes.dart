import 'package:rentify_inspection/screens/inspection/Inspection_dashboard.dart';
import 'package:rentify_inspection/screens/inspection/borrow_approval.dart';
import 'package:rentify_inspection/screens/inspection/rental_approval.dart';
import 'package:rentify_inspection/screens/inspection/Inspection_insert.dart';
import 'package:rentify_inspection/screens/inspection/Inspection_team.dart';

getRoutes() {
  return {
    //Inspection
    "/InsDB": (context) => InspectionDashboard(),
    "/BorrowReq": (context) => BorrowApproval(),
    "/RenterReq": (context) => RentalApproval(),
    "/InsInsert": (context) => InspectionInsert(),
    "/InsTeam": (context) => InspectionTeam(),
  };
}