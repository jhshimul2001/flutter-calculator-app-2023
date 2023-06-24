import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             ElevatedButton(onPressed: (){
               Navigator.pop(context);
             }, child: Text("pop"))
           ],
         ),
       ),
    );
  }
}
