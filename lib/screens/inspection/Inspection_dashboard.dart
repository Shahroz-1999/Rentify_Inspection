import 'package:flutter/material.dart';
import 'package:rentify_inspection/utils/SizeConfig.dart';
import 'package:rentify_inspection/utils/theme.dart';
import 'package:rentify_inspection/widgets/casual_operations.dart';

class InspectionDashboard extends StatefulWidget {
  const InspectionDashboard({Key? key}) : super(key: key);

  @override
  _InspectionDashboardState createState() => _InspectionDashboardState();
}

class _InspectionDashboardState extends State<InspectionDashboard> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    //Device Screen's width and height.
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: CREAM_COLOR,

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _topSection(SizeConfig.screenHeight, context),
          ],
        ),
      ),
    );
  }


  SizedBox _topSection(double height, BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Center(
              child: Text(
                "Inspection Team Dashboard",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),

          SizedBox(
            height: 461,
            width: double.infinity,
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              children: <Widget>[
                InkWell(
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center ,
                      children: <Widget>[
                        addVerticalSpace(5),
                        Icon(
                          Icons.account_box_rounded,
                          color: ORANGE_COLOR,
                          size: 80,
                        ),
                        Text(
                          "Product Approval",
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context,"/RenterReq");
                  },
                ),
                InkWell(
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center ,
                      children: <Widget>[
                        addVerticalSpace(5),
                        Icon(
                          Icons.account_box_outlined,
                          color: ORANGE_COLOR,
                          size: 80,
                        ),
                        Text(
                          "User Approval",
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, "/UserApproval");
                  },
                ),
                InkWell(
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center ,
                      children: <Widget>[
                        addVerticalSpace(5),
                        Icon(
                          Icons.account_circle,
                          color: ORANGE_COLOR,
                          size: 80,
                        ),
                        Text(
                          "Inspection Team",
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, "/InsTeam");
                  },
                ),
                InkWell(
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center ,
                      children: <Widget>[
                        addVerticalSpace(5),
                        Icon(
                          Icons.devices_outlined,
                          color: ORANGE_COLOR,
                          size: 80,
                        ),
                        Text(
                          "Insert Request",
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, "/InsInsert");
                  },
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }

}


