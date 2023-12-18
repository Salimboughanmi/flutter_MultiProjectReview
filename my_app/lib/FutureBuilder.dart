import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Futurebuilder extends StatefulWidget {
  const Futurebuilder({super.key});

  @override
  State<Futurebuilder> createState() => _FuturebuilderState();
}

class _FuturebuilderState extends State<Futurebuilder> {
  Future<List> getData() async {
    var response = await get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );
    List responseData = jsonDecode(response.body);
    return responseData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(" exemple flutter builder"),
          backgroundColor: Colors.blueAccent),
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: Text("${snapshot.data![i]['id']}"),
                  title: Text("${snapshot.data![i]['title']}"),
                );
              });
        },
      ),
    );
  }
}
