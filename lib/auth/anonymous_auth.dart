import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth_util.dart';

Future<User> signInAnonymously(BuildContext context) async {
  final signInFunc = () => FirebaseAuth.instance.signInAnonymously();
  return signInOrCreateAccount(context, signInFunc);
}
