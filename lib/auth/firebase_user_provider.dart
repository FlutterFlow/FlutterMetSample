import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FlutterMetFirebaseUser {
  FlutterMetFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

FlutterMetFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FlutterMetFirebaseUser> flutterMetFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FlutterMetFirebaseUser>(
            (user) => currentUser = FlutterMetFirebaseUser(user));
