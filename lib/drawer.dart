import 'package:flutter/material.dart';
import 'package:flutter_basic/login.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage("assets/images/iconGT.jfif"),
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
                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage(),));
              },
            ),
          ),
        ],
      ),
    );
  }
}
