import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legiapp/profile_set.dart';

import '../lang_selection.dart';

class LegiCustom extends StatelessWidget {
  const LegiCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262626),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, size: 23, color: Colors.white),
        ),
        backgroundColor: Color(0xFF131313),
        title: Text(
          "Settings",
          style: GoogleFonts.spectral(
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Notifications",
              style: GoogleFonts.montserrat(
                color: Color(0xFFC9C4C4),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(
                "Standard Notifications",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFC9C4C4),
                  fontSize: 20,
                ),
              ),
              trailing: Transform.scale(
                scale: 0.8, // Adjust scale factor as needed
                child: Switch(
                  value: true, // Change this value based on the user's preference
                  onChanged: (bool newValue) {
                    // Update the user's preference
                  },
                  activeColor: Color(0xFFFDCA00),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Theme Settings",
              style: GoogleFonts.montserrat(
                color: Color(0xFFC9C4C4),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(
                "Dark Mode",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFC9C4C4),
                  fontSize: 20,
                ),
              ),
              trailing: Transform.scale(
                scale: 0.8, // Adjust scale factor as needed
                child: Switch(
                  value: true, // Change this value based on the user's preference
                  onChanged: (bool newValue) {
                    // Update the user's preference
                  },
                  activeColor: Color(0xFFFDCA00),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(
                "Notifications Sound",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFC9C4C4),
                  fontSize: 20,
                ),
              ),
              trailing: Transform.scale(
                scale: 0.8, // Adjust scale factor as needed
                child: Switch(
                  value: true, // Change this value based on the user's preference
                  onChanged: (bool newValue) {
                    // Update the user's preference
                  },
                  activeColor: Color(0xFFFDCA00),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Preferences",
              style: GoogleFonts.montserrat(
                color: Color(0xFFC9C4C4),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(
                "Language",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFC9C4C4),
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {
                // Navigate to language selection screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LanguageSelectionPage()),
                );
              },
            ),
          ),
          Container(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(
                "Privacy Policy",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFC9C4C4),
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {
                // Navigate to privacy policy screen
              },
            ),
          ),
          Container(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(
                "Share",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFC9C4C4),
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {
                // Implement share functionality
              },
            ),
          ),
          SizedBox(height: 80,),

          Container(
            width: 50,
            height: 50,
            child: ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LegiSet()));
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFDCA00),
                  minimumSize: Size(30, 50)
                ),
                child: Text("Profile settings ->",style:
                GoogleFonts.spectral(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
          ),
        ],
      ),
    );
  }
}

