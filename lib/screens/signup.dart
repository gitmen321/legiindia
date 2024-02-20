import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legiapp/firebase_auth//firebase_fn.dart';
import 'package:legiapp/screens/loginpage.dart';

class LegiSign extends StatelessWidget {

final uname = TextEditingController();
final email = TextEditingController();
final pass = TextEditingController();

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
              decoration: BoxDecoration(
                color: Color(0xFF262626),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              width: 400,
              height: 560,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "REGISTER",
                    style: GoogleFonts.spectral(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 0),
                  Text(
                    "Sign up for free",
                    style: GoogleFonts.novaCut(
                      color: const Color(0xFFC9C4C4),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: uname,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: GoogleFonts.novaCut(
                        color: const Color(0xFFC9C4C4),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    controller: email,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: GoogleFonts.novaCut(
                        color: const Color(0xFFC9C4C4),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: pass,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.novaCut(
                        color: const Color(0xFFC9C4C4),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: pass,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Confirm password",
                      hintStyle: GoogleFonts.novaCut(
                        color: const Color(0xFFC9C4C4),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Have an account?",
                        style: GoogleFonts.cabin(color: Color(0xFFC9C4C4),),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LegiLogin()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Color(0xFFFDCA00)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      String uuname = uname.text.trim();
                      String uemail = email.text.trim();
                      String upass = pass.text.trim();
                      FireBaseFun().registerUser(email : uemail, pass : upass)
                          .then((response){
                            if(response == null){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LegiLogin()));
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(response)));
                            }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFDCA00),
                      minimumSize: const Size(250, 50),
                    ),
                    child: Text(
                      "Register",
                      style: GoogleFonts.spectral(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "You are also welcome to use the custom settings",
                      style: TextStyle(
                        color: Color(0xFFC9C4C4),
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
