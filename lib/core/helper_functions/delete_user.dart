import 'package:firebase_auth/firebase_auth.dart';

import 'package:fruits_hub/core/helper_functions/delete_user.dart'
    as firebaseAuthServices;

Future<void> deleteUser(User? user) async {
  if (user != null) {
    await firebaseAuthServices.deleteUser(user);
  }
}
