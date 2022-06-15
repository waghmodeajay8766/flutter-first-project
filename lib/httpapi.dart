import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpApi extends StatefulWidget {
  const HttpApi({Key? key}) : super(key: key);

  @override
  State<HttpApi> createState() => _HttpApiState();
}

class _HttpApiState extends State<HttpApi> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  var url = Uri.parse(
      "https://jq3ocxrkr6.execute-api.ap-south-1.amazonaws.com/dev/booking-enquire/all");
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]["state"]),
                  )
                },
                itemCount: data.length
        )
            : Center(
            child: CircularProgressIndicator()),
      ),
    );
  }
}
