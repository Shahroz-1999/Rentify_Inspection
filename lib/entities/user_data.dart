import 'package:cloud_firestore/cloud_firestore.dart';

class UserData{
  late String _id;
  late String _firstName;
  late String _lastName;
  late String _email;
  late String _password;

  late int _phoneNumber;
  late int nic;
  late String _nicFrontUrl;
  late String _nicBackUrl;




  set id(String value) {
    _id = value;
  }
  String get id => _id;
  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  int get phoneNumber => _phoneNumber;

  set phoneNumber(int value) {
    _phoneNumber = value;
  }

  int get getNIC => nic;

  set setNIC(int value) {
    nic = value;
  }

  String get nicFrontUrl => _nicFrontUrl;

  set nicFrontUrl(String value) {
    _nicFrontUrl = value;
  }

  String get nicBackUrl => _nicBackUrl;

  set nicBackUrl(String value) {
    _nicBackUrl = value;
  }
}