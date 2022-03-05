import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentify_inspection/utils/theme.dart';
import 'package:rentify_inspection/widgets/casual_operations.dart';


class InspectionTeam extends StatefulWidget {
  const InspectionTeam({Key? key}) : super(key: key);
  @override
  _InspectionTeamState createState() => _InspectionTeamState();

}

class _InspectionTeamState extends State<InspectionTeam> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    //Device Screen's width and height.
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: CREAM_COLOR,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/bgnd_textures/dashboard_borrower.png"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(height * 0.02),

                  _TopSection(height: height, width: width),

                  addVerticalSpace(height * 0.02),

                  _midSection(context, height,width),

                  addVerticalSpace(height * 0.02),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView.count(crossAxisCount: 2,
                      shrinkWrap: true,

                      children: const <Products>[
                        Products(),
                        Products(),

                      ],
                    ),

                  )



                ],
              ),
            )),
      ),
    );
  }

  Column _midSection(BuildContext context, double height,double width) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(239, 235, 241, 1.0).withOpacity(0.7),
                    boxShadow: [
                      BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.09803921568627451), blurRadius: 5),
                    ],

                  ),
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.fromLTRB(0, 10 , 20, 10),
                  padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                  child: Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Table(

                        defaultColumnWidth: FixedColumnWidth(120.0),
                        border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                        children: [
                          TableRow( children: [
                            Column(children:[Text('Name', style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,)]),
                            Column(children:[Text('JobPosition', style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,)]),
                            Column(children:[Text('Email', style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,)]),

                          ]),

                          TableRow( children: [
                            Column(children:[Text('Burhan',style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left,)]),
                            Column(children:[Text('Designer',style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left,)]),
                            Column(children:[Text('fa18bsse0056',style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left,)]),

                          ]),
                          TableRow( children: [
                            Column(children:[Text('Shahroz',style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left)]),
                            Column(children:[Text('Developer',style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left)]),
                            Column(children:[Text('fa18bsse0058',style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left)]),

                          ]),
                          TableRow( children: [
                            Column(children:[Text('Tooba',style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left)]),
                            Column(children:[Text('Documentarian',style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left)]),
                            Column(children:[Text('fa17bsse0042',style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left)]),

                          ]),
                        ],
                      ),
                    ),
                    Row(

                      children: <Widget>[
                        TextButton(onPressed: (){setState(() {
                        }); }, child: Text('Insert'),style: TextButton.styleFrom(
                          primary:  Color.fromRGBO(234, 243, 234, 1),
                          backgroundColor: Color(0xFFFCA901)
                        ),),
                        addHorizontalSpace(10),
                        TextButton(onPressed: (){setState(() {
                        }); }, child: Text('Edit'),style: TextButton.styleFrom(
                            primary:  Color.fromRGBO(234, 243, 234, 1),
                            backgroundColor: Color(0xFFFCA901)
                        ),),


                      ],
                    ),


                  ]),


              )
          )
        ]

    );
  }

}

class _TopSection extends StatelessWidget {
  const _TopSection({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /* Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding:  EdgeInsets.fromLTRB(358, 0, 20, 0),
              child: Icon(
                Icons.account_circle,
                color: ORANGE_COLOR,
                size: 33,
              ),
            ),
          ],
        ),*/
        addVerticalSpace(height * 0.02),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Text(
            "INSPECTION TEAM",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ],
    );
  }
}

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

}
