import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'navigationpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //  primarySwatch: Colors.blue,
        // brightness: Brightness.dark
        scaffoldBackgroundColor: Colors.yellow,

        textTheme: TextTheme(
            headline6: TextStyle(fontSize: 30),
            bodyText2: TextStyle(fontSize: 50)),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(15), left: Radius.circular(15)))),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 0,
        ),

        useMaterial3: true,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orangeAccent,
            padding: EdgeInsets.all(30)
          )
        )
      ),
      home: SplashScreen(),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/navigation': (context) => Navigationpages(),
        '/login': (context) => Loginscreen()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 4),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => Navigationpages())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("subscribe this channel"),
      ),
      body: Center(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Flutter with shimul",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
