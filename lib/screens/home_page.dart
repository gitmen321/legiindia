import 'package:flutter/material.dart';

class LegiHome extends StatelessWidget {
  const LegiHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262626),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, 
            icon: Icon(Icons.list_rounded,color: Colors.white,size: 30,)),
        backgroundColor: Color(0xFF131313),
        title: Text("Legii  Homeeeeeeeeee",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
      ),
    );
  }
}
