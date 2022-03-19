import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentify_inspection/utils/SizeConfig.dart';
import 'package:rentify_inspection/utils/theme.dart';
import 'package:rentify_inspection/widgets/casual_operations.dart';
import 'package:rentify_inspection/widgets/widget_generator.dart';

class InspectionInsert extends StatefulWidget {
  const InspectionInsert({Key? key}) : super(key: key);

  @override
  _InspectionInsertState createState() => _InspectionInsertState();
}

class _InspectionInsertState extends State<InspectionInsert> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: CREAM_COLOR,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              addVerticalSpace( SizeConfig.screenHeight * 0.034 ),
              _greetSection(SizeConfig.screenHeight),
              addVerticalSpace( SizeConfig.screenHeight * 0.034 ),
              _textFieldsSection(SizeConfig.screenWidth,SizeConfig.screenHeight)

            ],

          )
      ),

    );
  }

  Container _greetSection(double height) {
    return Container(
      child: Column(
        children: <Widget>[
          addVerticalSpace( height * 0.034),
          Center(
              child:Text("Insert Inspection Member",
                style: Theme.of(context).textTheme.headline1,
              )
          ),
        ],
      ),
    );
  }
  Container _textFieldsSection(double width, double height){
    return Container(

      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFieldContainer(height: 40, width: (width-50)/2, textField: TextField(
                expands: false,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "First Name",
                  fillColor: Colors.white,
                  filled: true,
                ),
              )),
              addHorizontalSpace( 20 ),
              TextFieldContainer(height: 40, width: (width-50)/2, textField: TextField(
                expands: false,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Last Name",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ))
            ],
          ),
          addVerticalSpace( height * 0.025 ),
          TextFieldContainer(height: 40, width: width, textField: TextField(
            expands: false,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Job Position",
              fillColor: Colors.white,
              filled: true,
            ),
          )),
          addVerticalSpace( height * 0.025 ),
          TextFieldContainer(height: 40, width: width, textField: TextField(
            expands: false,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Phone Number",
              fillColor: Colors.white,
              filled: true,
            ),
          )),
          addVerticalSpace ( height * 0.025 ),
          TextFieldContainer(height: 40, width: width, textField:TextField(
            expands: false,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Email",
              fillColor: Colors.white,
              filled: true,
            ),
          )),
          addVerticalSpace( height * 0.025 ),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).backgroundColor,
                primary: Theme.of(context).primaryColor,
                minimumSize: Size(width,50),
              ),

              onPressed: (){},
              child: const Text("INSERT"),
            ),
          )
        ],
      ),
    );
  }



}