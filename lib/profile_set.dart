import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legiapp/screens/home_page.dart';

class LegiSet extends StatefulWidget {
  const LegiSet({super.key});

  @override
  State<LegiSet> createState() => _LegiSetState();
}

class _LegiSetState extends State<LegiSet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF262626),
      appBar: AppBar(

        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, size: 23, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF131313),
        title: Text(
          "Profile Settings",
          style: GoogleFonts.spectral(
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50,),
              TextField(
                style: const TextStyle(color: Colors.white), // Change text color to white
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: GoogleFonts.cabinCondensed(
                    fontSize: 20,
                    color: const Color(0xFFC9C4C4),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: const Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                style: const TextStyle(color: Colors.white), // Change text color to white
                decoration: InputDecoration(
                  hintText: " Age",
                  hintStyle: GoogleFonts.cabinCondensed(
                    fontSize: 20,
                    color: const Color(0xFFC9C4C4),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.date_range_rounded,color: Colors.white,size: 25,),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                style: const TextStyle(color: Colors.white), // Change text color to white
                decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: GoogleFonts.cabinCondensed(
                      fontSize: 20,
                      color: const Color(0xFFC9C4C4),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    suffixIcon: const Icon(CupertinoIcons.phone,color: Colors.white,)
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                style: const TextStyle(color: Colors.white), // Change text color to white
                decoration: InputDecoration(
                  hintText: "Email Address",
                  hintStyle: GoogleFonts.cabinCondensed(
                    fontSize: 20,
                    color: const Color(0xFFC9C4C4),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: const Icon(CupertinoIcons.mail,color: Colors.white,),
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                style: const TextStyle(color: Colors.white), // Change text color to white
                decoration: InputDecoration(
                  hintText: "Address",
                  hintStyle: GoogleFonts.cabinCondensed(
                    fontSize: 20,
                    color: const Color(0xFFC9C4C4),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: const Icon(CupertinoIcons.home,color: Colors.white,),
                ),
              ),
              const SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Membership Type",
                    style: GoogleFonts.cabinCondensed(
                      color: const Color(0xFFC9C4C4),
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.list,color: Colors.white,),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                height: 2,
                color: Color(0xFF6E6E6E),
              ),

              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Save Changes",
                    style: GoogleFonts.cabin(
                      color: const Color(0xFF10B902),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LegiHome()));
                    },
                    icon: const Icon(Icons.save,color: Color(0xFF10B902),size: 30,),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                height: 2,
                color: Color(0xFF6E6E6E),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
