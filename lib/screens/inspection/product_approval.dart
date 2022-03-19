import 'package:flutter/material.dart';
import 'package:rentify_inspection/utils/theme.dart';
import 'package:rentify_inspection/widgets/casual_operations.dart';

class RentalApproval extends StatelessWidget {
  const RentalApproval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Rental Approval"),
          centerTitle: true,
        ),
        body: ListView(
          children: <RentalApprovalItem>[
            RentalApprovalItem(),
            RentalApprovalItem(),
            RentalApprovalItem(),
            RentalApprovalItem()
          ],
        ));
  }
}

class RentalApprovalItem extends StatelessWidget {
  const RentalApprovalItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image(
                image: AssetImage("assets/images/JavaBook.png"),
              ),
            ),
          ),
          addHorizontalSpace(20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Java Book", style: Theme.of(context).textTheme.headline2),
                Text("9th Edition of Java Beginers by demi",
                    style: Theme.of(context).textTheme.bodyText1),
                addVerticalSpace(10),


              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text("Rs 500", style: Theme.of(context).textTheme.headline1),
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      primary: Theme.of(context).primaryColor,
                    ),
                    onPressed: (){},
                    child: Text("Approve")),
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      primary: Theme.of(context).primaryColor,
                    ),
                    onPressed: (){},
                    child: Text("Reject"))

              ],
            ),
          )
        ],
      ),
    );
  }
}
