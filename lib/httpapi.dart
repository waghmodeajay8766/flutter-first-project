import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpApi extends StatefulWidget {
  const HttpApi({Key? key}) : super(key: key);

  @override
  State<HttpApi> createState() => _HttpApiState();
}

class _HttpApiState extends State<HttpApi> {
  // TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future getData() async {
    var res =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'posts'));
    var jsonData = jsonDecode(res.body);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u['userId'], u['Id'], u['title'], u['body']);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Container(
        child: Card(
          child: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: (snapshot.data.length),
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text((snapshot.data as dynamic)[i].title),
                        subtitle: Text((snapshot.data as dynamic)[i].body),
                        // leading: Text((snapshot.data as dynamic)[i].id),

                      );
                    });
              }
            },
          ),
        ),
      ),
    );
  }
}

class User {
  final userId, Id, title, body;
  User(this.userId, this.Id, this.title, this.body);
}
