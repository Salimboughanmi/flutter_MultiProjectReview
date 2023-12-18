import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedprefer extends StatefulWidget {
  const Sharedprefer({super.key});

  @override
  State<Sharedprefer> createState() => _SharedpreferState();
}

class _SharedpreferState extends State<Sharedprefer> {
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shared preferences"),
        backgroundColor: Colors.yellow,
      ),
      body: ListView(children: [
        MaterialButton(
          onPressed: () async {
            SharedPreferences sharedPreferences =
                await SharedPreferences.getInstance();
            sharedPreferences.setString("name", " salim");
          },
          child: Text("SET NAME"),
          color: Colors.red,
        ),
        MaterialButton(
          onPressed: () async {
            SharedPreferences sharedPreferences =
                await SharedPreferences.getInstance();
            String name = sharedPreferences.getString("name")!;
// nous avons utuliser ! a la fin car String name n'est declarer dans la classe generale avec ? ou dans la mm ligne
            //  print(sharedPreferences.getString("name"));
          },
          child: Text("SHOW NAME"),
          color: Colors.green,
        ),
      ]),
    );
  }
}
