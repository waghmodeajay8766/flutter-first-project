import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Cricketers(),
  ));
}

class Cricketers extends StatelessWidget {
  const Cricketers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: ExactAssetImage("assets/images/iconGT.jpeg"),
                ),
                accountName: Text("Ajay Waghmode"),
                accountEmail: Text("ajay.waghmode@greentiger.in")),
            const ListTile(
              leading: Icon(Icons.accessible),
              title: Text("Name"),
              subtitle: Text("Ajay Waghode"),
              trailing: Icon(Icons.send_and_archive),
            ),
            const ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Item 2"),
              subtitle: Text("Item 3 value"),
              trailing: Icon(Icons.add_box_outlined),
            ),
            const ListTile(
              leading: Icon(Icons.add_business),
              title: Text("Item 3"),
              subtitle: Text("Item 3 value"),
              trailing: Icon(Icons.add_chart_rounded),
            ),
            const ListTile(
              leading: Icon(Icons.ac_unit_sharp),
              title: Text("Item 4"),
              subtitle: Text("Item 4 value"),
              trailing: Icon(Icons.account_balance),
            ),
            const ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Item 5"),
              subtitle: Text("Item 5 value"),
              trailing: Icon(Icons.access_alarms_outlined),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: ListTile(
                leading: const Icon(Icons.lock),
                title: const Text("Logout"),
                subtitle: const Text("Logout here"),
                trailing: const Icon(Icons.logout),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Bike Service  Details"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Reg. No",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Text("MH-45 ",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Make",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Text("Hero Honda",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("model",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Text("Splendor",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Variant",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Text("Plus",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Colour",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Text("Black",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Conversion Date",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Text("11 May 2022",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Warranty Teal",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Text("11 May 2023",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Last Service Date",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Text("25 May 2023",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Next Service Date",
                    style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Text("11 Aug 2023",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              RaisedButton(
                  child: const Text("Next",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()));
                  }),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
       child: Image.asset('assets/images/logo.png', width: 320),
      ),

    );
  }
}
