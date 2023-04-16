import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/user.dart';
import '../screen/home.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  //User Register

  void SignUp(String name, String email, String password, String phone_number,
      String address) async {
    try {
      if (name.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          phone_number.isNotEmpty &&
          address.isNotEmpty) {
        UserCredential credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        myUser user = myUser(
            name: name,
            email: email,
            uid: credential.user!.uid,
            address: address,
            phone_number: phone_number);

        await FirebaseFirestore.instance
            .collection('users')
            .doc(credential.user!.uid)
            .set(user.toJson());
        await Get.to(HomeScreen(
          address: address,
          name: name,
          phoneNumber: phone_number,
        ));
      } else {
        Get.snackbar("Error Occurred", "Please Enter all feilds");
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error Occurred", e.toString());
    }
  }
}
