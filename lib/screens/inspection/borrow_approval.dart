import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentify_inspection/widgets/casual_operations.dart';
import 'package:rentify_inspection/widgets/casual_operations.dart';

class BorrowApproval extends StatelessWidget {
  const BorrowApproval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Borrow Approval"),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <BorrowApprovalItem>[
            BorrowApprovalItem(),
            BorrowApprovalItem(),BorrowApprovalItem(),
            BorrowApprovalItem(),
            BorrowApprovalItem(),
            BorrowApprovalItem()
          ],
        ));
  }
}

class BorrowApprovalItem extends StatelessWidget {
  const BorrowApprovalItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image:AssetImage("assets/images/face.jpeg"), fit: BoxFit.fill),
                    ),
                    ),
                addHorizontalSpace(10),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text("Ali Ahmed",style: Theme.of(context).textTheme.headline3,),
                      Text("Gulshan Block-6",style:Theme.of(context).textTheme.subtitle2),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
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
            Center(
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor:Theme.of(context).backgroundColor,
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: (){},
                  child: Text("View Item")),
            ),
          ],
        ),
      ),
    );
  }
}
