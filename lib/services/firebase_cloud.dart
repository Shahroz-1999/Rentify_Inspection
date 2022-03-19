import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:rentify_inspection/entities/user_data.dart';

class Firebase_firestore{
  FirebaseFirestore firestore;
  FirebaseStorage storage;


  Firebase_firestore():firestore =  FirebaseFirestore.instance , storage = FirebaseStorage.instance;

  Stream<QuerySnapshot<Object?>> getPendingUsers() {
    var result;
     result = firestore
         .collection('Users')
         .where("Verified",isEqualTo: false)
         .snapshots();
     return result;
  }
  //TODO: Implement verification status.
  updateUserVerification(UserData userData) {
     firestore
        .collection('Users')
        .doc(userData.id)
        .update({'Verified': true});
  }
  //TODO: Implement deletion if wrong credentials provided.
  delUser(UserData userData){
    firestore
        .collection('Users')
        .doc(userData.id)
        .delete();
  }

}