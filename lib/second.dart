import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Padding(
        padding:  EdgeInsets.all(25.0),
        child: Card(
          child: Padding(
            padding:EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png', width: 320),
                const SizedBox(height: 35),
                Text(
                  myText,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                        hintText: "Enter Something Here...",
                        border: OutlineInputBorder(),
                        labelText: "Name"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.all(35.0),
        child: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
          tooltip: 'Show me the value',
          child: const Icon(Icons.saved_search),
        ),
      ),
      backgroundColor: Colors.lightGreen[200],
    );
  }
}
