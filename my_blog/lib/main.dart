import 'package:flutter/material.dart';
import 'package:my_blog/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 55,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "To my Blog",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Image.asset("images/login.png"),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const HomePage();
                    },
                    ),
                    );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(300, 40),
                  shape:const StadiumBorder(),
                ),
                child: const Text("Login"),
                ),
                const SizedBox(height: 11.0),
                 ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(300, 40),
                  shape:const StadiumBorder(),
                ),
                child: const Text("SignUp"),
                ),
          ],
        ),
      ),
    );
  }
}