import 'package:firebase_auth/firebase_auth.dart';

class FireBaseFun {
  Future<String?> registerUser({required String email, required String pass}) async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      print(e);
    }
  }

  Future<String?> loginUser({required String uemail, required String upass}) async{

    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: uemail,
          password: upass
      );
      return null;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return e.message;
    }


  }


}