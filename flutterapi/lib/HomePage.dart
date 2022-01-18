import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String baseUrl = "https://randomuser.me/api/?results=50";
  List data = [];
  var isLoading = true;

  @override
  void initState() {
    super.initState();
    getJSONdata();
  }

  Future getJSONdata() async {
    var response = await http.get(Uri.parse(baseUrl));
    setState(() {
      var convertedResponse = jsonDecode(response.body);
      data = convertedResponse['results'];
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Demo"),
      ),
      body: Container(
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(data[index]['picture']['thumbnail']),
                            ),
                            title: Text(data[index]['name']['first']),
                            subtitle: Text(data[index]['location']['city']),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: data.length,
                ),
        ),
      ),
    );
  }
}
