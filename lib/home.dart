import 'package:flutter/material.dart';
import 'package:flutter_basic/drawer.dart';
import 'package:flutter_basic/httpapi.dart';
import 'package:flutter_basic/second.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      drawer: const myDrawer(),
      appBar: AppBar(
        title: const Text("Bike Service  Details"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:15),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Reg. No",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
                const Text("MH-45 ",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                const SizedBox(height: 30),
                const Text("Make",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
                const Text("Hero Honda",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                const SizedBox(height: 30),
                const Text("model",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
                const Text("Splendor",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                const SizedBox(height: 30),
                const Text("Variant",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
                const Text("Plus",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                const SizedBox(height: 30),
                const Text("Colour",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
                const Text("Black",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                const SizedBox(height: 30),
                const Text("Conversion Date",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
                const Text("11 May 2022",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                const SizedBox(height: 30),
                const Text("Warranty Teal",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
                const Text("11 May 2023",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                const SizedBox(height: 30),
                const Text("Last Service Date",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
                const Text("25 May 2023",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                const SizedBox(height: 30),
                const Text("Next Service Date",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
                const Text("11 Aug 2023",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                          child: const Text("Next",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HttpApi()));
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}