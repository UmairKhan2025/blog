import 'package:flutter/material.dart';
import 'package:my_blog/description_page.dart';
import 'package:my_blog/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (backgroundColor == Colors.blueGrey) {
                    backgroundColor = Colors.green;
                  } else {
                    backgroundColor = Colors.blue;
                  }
                });
              },
              icon: const Icon(Icons.color_lens),
            ),
          ],
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: ListTile(
                    title: Text(
                      "Our Info",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: const Text(
                    "Settings",
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings_accessibility_outlined),
                  title: const Text(
                    "Profile",
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.security),
                  title: const Text(
                    "Privacy/Security",
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const LoginPage();
                        },
                      ),
                    );
                  },
                  leading: const Icon(Icons.logout),
                  title: const Text(
                    "Logout",
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: const Text(
                    "Settings",
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: Wrap(
                  spacing: 10,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Money "),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Bitcoin"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Stock Market"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("House Market"),
                    ),
                    /*ElevatedButton(onPressed: () {},
                 
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.white,
                 ),
                 child:const Text("Dynamic"),
                 ),*/
                  ],
                ),
              ),
              // first
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: "How to Get Rich",
                          imagePath: "images/blog.png",
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2.0,
                        blurRadius: 2,
                        offset: Offset(
                          2,
                          2,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/blog.png"),
                      const ListTile(
                        title: Text("How To Get Rish"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ),
              //second
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: "Should You Buy House Today ",
                          imagePath: "images/house.png",
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2.0,
                        blurRadius: 2,
                        offset: Offset(
                          2,
                          2,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/house.png"),
                      const ListTile(
                        title: Text("Should You Buy House Today"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ),

              //third
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: "My Today's Shopping",
                          imagePath: "images/shopping.png",
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2.0,
                        blurRadius: 2,
                        offset: Offset(
                          2,
                          2,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/shopping.png"),
                      const ListTile(
                        title: Text("My Today's Shopping"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ),
              //fourth
              // last image full code with text start here
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DescriptionPage(
                          title: "How To make Apps",
                          imagePath: "images/mobile.png",
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2.0,
                        blurRadius: 2,
                        offset: Offset(
                          2,
                          2,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/mobile.png"),
                      const ListTile(
                        title: Text("How To Make Apps"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              ), //last image code Ends in there
            ],
          ),
        ));
  }
}
