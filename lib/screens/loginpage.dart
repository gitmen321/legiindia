import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legiapp/screens/custompage.dart';
import 'package:legiapp/screens/signup.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey:  "AIzaSyB3ItzRvoxMH-FXJBfM9S8rp99X32Pz7X4",
          appId: "1:209866905734:android:a2ac411fed1ac92d2f9907",
          messagingSenderId: "",
          projectId: "legiindia"
      )
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LegiLogin(),
    ),
  );
}

class LegiLogin extends StatefulWidget {
  const LegiLogin({Key? key}) : super(key: key);

  @override
  State<LegiLogin> createState() => _LegiLoginState();
}

class _LegiLoginState extends State<LegiLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131313),
      body: Stack(
        children: [
          Positioned(
            top: 200,
            left: 20,
            child: Text(
              "legii",
              style: GoogleFonts.dancingScript(
                fontSize: 80,
                color: CupertinoColors.systemYellow,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: -101,
            child: Image.asset(
              "assets/images/ligigirl.jpg",
              width: 400,
              height: 400,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF262626),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(60),
                ),
              ),
              width: 400,
              height: 380,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    "WELCOME",
                    style: GoogleFonts.spectral(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Login to continue",
                    style: GoogleFonts.novaCut(
                      color: const Color(0xFFC9C4C4),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: GoogleFonts.novaCut(
                        color: const Color(0xFFC9C4C4),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.novaCut(
                        color: const Color(0xFFC9C4C4),
                      ),
                      suffixIcon: TextButton(
                        onPressed: () {
                          // Add functionality for "Forgot password" here
                        },
                        child: Text(
                          "Forgot password",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member?",
                        style: GoogleFonts.novaOval(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => LegiSign()),
                          );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: Color(0xFFFDCA00)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LegiCustom()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFDCA00),
                      minimumSize: const Size(250, 50),
                    ),
                    child: Text(
                      "Login",
                      style: GoogleFonts.spectral(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
