import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentify_inspection/entities/user_data.dart';
import 'package:rentify_inspection/screens/inspection/user_detail.dart';
import 'package:rentify_inspection/widgets/casual_operations.dart';

import '../../services/firebase_cloud.dart';

class UserApproval extends StatefulWidget {

  const UserApproval({Key? key}) : super(key: key);

  @override
  State<UserApproval> createState() => _UserApprovalState();
}

class _UserApprovalState extends State<UserApproval> {
  Firebase_firestore firebase_firestore = new Firebase_firestore();
  UserData _userData = new UserData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User Approval"),
          centerTitle: true,
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: firebase_firestore.getPendingUsers(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              for(int i =0 ; i < (snapshot.data!).docs.length; i++){

              }

              return ListView(
                children: (snapshot.data!).docs.map((document)  {
                  _userData.id = document.id;
                  _userData.firstName = document["First Name"];
                  _userData.lastName = document["Last Name"];
                  _userData.phoneNumber = document["PhoneNumber"];
                  _userData.nicBackUrl = document["NicBackUrl"];
                  _userData.nicFrontUrl = document["NicFrontUrl"];
                  _userData.nic = document["NIC"];
                  PendingUser pendingUser = new PendingUser(userData: _userData);
                  _userData = UserData();
                  return pendingUser;
                }).toList(growable: true)
              );
            }),
        );
  }
}

class PendingUser extends StatelessWidget {
  const PendingUser({Key? key, required this.userData, }) : super(key: key);
  final UserData userData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
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
                        Text(userData.firstName+" "+userData.lastName,style: Theme.of(context).textTheme.headline3,),
                        Text("Nic: "+userData.nic.toString(),style:Theme.of(context).textTheme.subtitle2),
                        Text("Pone: "+userData.phoneNumber.toString(),style:Theme.of(context).textTheme.subtitle2),

                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  UserDetail(userData:userData )));
      },
    );
  }
}
