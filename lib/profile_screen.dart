import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Softwarica", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.red,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic
          )),
          leading: Icon(Icons.arrow_back_ios),
          actions: [Icon(Icons.more_horiz, color: Colors.red, size: 25)]
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                    "assets/images/Screenshot 2026-09-28 213131.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100),
              ),
              Column(
                children: [
                  Text("174"),
                  Text("Posts"),
                ],
              ),
              Column(
                children: [
                  Text("700k"),
                  Text("Follower")
                ],
              ),
              Column(
                children: [
                  Text("700", style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.red
                  ),),
                  Text("Following")
                ],
              ),
              SizedBox(height: 20),

              // Highlights
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Highlights",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Highlight circles
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  // Highlight 1
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          "assets/images/Screenshot 2026-09-28 213131.png",
                        ),
                      ),
                      SizedBox(height: 5),
                      Text("Campus"),
                    ],
                  ),

                  // Highlight 2
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          "assets/images/Screenshot 2026-09-28 213131.png",
                        ),
                      ),
                      SizedBox(height: 5),
                      Text("Events"),
                    ],
                  ),

                  // Highlight 3
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          "assets/images/Screenshot 2026-09-28 213131.png",
                        ),
                      ),
                      SizedBox(height: 5),
                      Text("Students"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
