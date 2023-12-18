/* import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ExempleApi extends StatefulWidget {
  const ExempleApi({super.key});

  @override
  State<ExempleApi> createState() => _ExempleApiState();
}

class _ExempleApiState extends State<ExempleApi> {
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("exemple api"),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: MaterialButton(
              onPressed: () async {
                var response = await get(
                  Uri.parse("https://jsonplaceholder.typicode.com/posts"),
                );
                var responsebody = jsonDecode(response.body);
                print(responsebody[0]);
                data.addAll(responsebody);
                setState(() {});
              },
              child: Text("Http Request"),
            ),
            color: Colors.brown,
          ),
          ...List.generate(data.length, (index) {
            return Card(
              child: ListTile(
                contentPadding: EdgeInsets.all(20),
                title: Text(
                  '${data[index]["title"]}',
                ),
                leading: Text(
                  '${data[index]["id"]}',
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
 */