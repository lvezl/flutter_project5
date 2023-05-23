import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project5/next.dart';
import 'package:neopop/neopop.dart';

void main() {
  runApp(const MaterialApp(
    home: Myswift(
    ),
  ));
}

class Myswift extends StatefulWidget {
  const Myswift({super.key});
  @override
  State<Myswift> createState() => _MyswiftState();
}

class _MyswiftState extends State<Myswift> {
  var judul = "Log in";     

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [

            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: Text("Menu"),
            ),

            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).push(    //pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyWidget(
                      parameter: "Mobile Legend",
                      parameter2: "AOV",
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("List"),
              onTap: () {},
            ),
            ListTile(
              title: Text("About"),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(judul),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: "Username"),
            ), 
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ), 
            const SizedBox(height: 10.0,
            ),
            NeoPopButton(
    color: Colors.blue,
    onLongPress: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const MyWidget(
                        parameter: "A",
                        parameter2: "B",
                      ),
                    ),
                  );
                },
    onTapUp: () => HapticFeedback.vibrate(),
    onTapDown: () => HapticFeedback.vibrate(),
    child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("Login"),
            ],
        ),
    ),
),
       ] ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          judul = "Daftar Game";
        });

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MyWidget(
              parameter: "Mobile Legend",
              parameter2: "AOV",
            ),
          ),
        );
      },
      ),
  );
}
}