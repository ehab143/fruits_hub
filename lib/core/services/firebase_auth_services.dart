import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthServices.createUserWithEmailAndPassword: ${e.toString()} and code: ${e.code}',
      );
      if (e.code == 'weak-password') {
        throw CustomException(
          message: 'الرمز ضعيف. الرجاء اختيار كلمة مرور أقوى.',
        );
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني.',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تاكد من اتصالك بالإنترنت   .');
      } else {
        throw CustomException(message: 'حدث خطأ. الرجاء المحاولة مرة أخرى');
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthServices.createUserWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomException(message: 'حدث خطأ. الرجاء المحاولة مرة أخرى');
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthServices.signInWithEmailAndPassword: ${e.toString()} and code: ${e.code}',
      );
      if (e.code == 'user-not-found') {
        throw CustomException(
          message: 'البريد الالكتروني او كلمة المرور غير صحيحة',
        );
      } else if (e.code == 'wrong-password') {
        throw CustomException(
          message: 'البريد الالكتروني او كلمة المرور غير صحيحة',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تاكد من اتصالك بالإنترنت   .');
      } else {
        throw CustomException(message: 'حدث خطأ. الرجاء المحاولة مرة أخرى');
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthServices.signInWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomException(message: 'حدث خطأ. الرجاء المحاولة مرة أخرى');
    }
  }
}
