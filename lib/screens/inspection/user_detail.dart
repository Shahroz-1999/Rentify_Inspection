import 'package:flutter/material.dart';
import 'package:rentify_inspection/entities/user_data.dart';
import 'package:rentify_inspection/services/firebase_cloud.dart';
import 'package:rentify_inspection/utils/SizeConfig.dart';
import 'package:rentify_inspection/widgets/casual_operations.dart';

class UserDetail extends StatelessWidget {
  final UserData _userData;
  const UserDetail({Key? key, required UserData userData,})
      : _userData = userData,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    Firebase_firestore firebase_firestore = new Firebase_firestore();
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("User Details")),
        ),
        //TODO: Design User Detail Screen.
        body: Padding(
          padding: const EdgeInsets.all(2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 5.0,
                      ),
                    ) ,
                    child: Image.network(_userData.nicFrontUrl,fit: BoxFit.cover)
                ),
                Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 5.0,
                      ),
                    ) ,
                    child: Image.network(_userData.nicBackUrl,fit: BoxFit.cover)
                ),
                addVerticalSpace(SizeConfig.screenHeight * 0.025),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5.0,
                      ),
                    ) ,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Provided NIC :" + _userData.nic.toString(),style: Theme.of(context).textTheme.headline2,),
                    )
                ),
                addVerticalSpace(SizeConfig.screenHeight * 0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    MaterialButton(
                      color: Colors.orange,
                        child: Text("Approve",style: TextStyle(color: Colors.white),),
                        onPressed:(){
                        firebase_firestore.updateUserVerification(_userData);
                        Navigator.pop(context);
                        }),
                    MaterialButton(
                        color: Colors.red,
                        child: Text("Reject",style: TextStyle(color: Colors.white),),
                        onPressed:(){
                          firebase_firestore.delUser(_userData);
                          Navigator.pop(context);
                        })
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
