import 'package:cloud_firestore/cloud_firestore.dart';

class myUser {
  String name;
  String email;
  String uid;
  String phone_number;
  String address;

  myUser(
      {required this.name,
      required this.email,
      required this.uid,
      required this.phone_number,
      required this.address});

  //App - Firebase(Map)
  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "uid": uid,
        "phone_number": phone_number,
        "address": address
      };

  //Firebase(Map) - App(User)
  static myUser fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return myUser(
        email: snapshot['email'],
        uid: snapshot["uid"],
        name: snapshot["name"],
        address: snapshot["address"],
        phone_number: snapshot["phone_number"]);
  }
}
