import 'package:flutter/material.dart';

import 'loginscreen.dart';

class Navigationpages extends StatefulWidget {
  const Navigationpages({Key? key}) : super(key: key);

  @override
  State<Navigationpages> createState() => _NavigationpagesState();
}

class _NavigationpagesState extends State<Navigationpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginscreen()));
                },
                child: Text(
                  "push",
                  style: TextStyle(fontSize: 40),
                )),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Loginscreen()));
                },
                child: Text(
                  "push replacement",
                  style: TextStyle(fontSize: 40),
                )),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                 Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  "push named",
                  style: TextStyle(fontSize: 40),
                )),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text(
                  "push replacement named",
                  style: TextStyle(fontSize: 40),
                )),
          ],
        ),
      ),
    );
  }
}
