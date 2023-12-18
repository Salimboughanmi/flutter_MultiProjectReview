import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? msg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("salim boughnmi"),
        backgroundColor: Colors.amber,
        actions: [
          /* exemple Search delegate */
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Customsearchdelegate());
              },
              icon: Icon(Icons.search)),
/* exemple Search delegate */
          PopupMenuButton(
              onSelected: (value) {
                print(value);
                setState(() {
                  msg = value;
                });
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('one'),
                      value: 'valone',
                    ),
                    PopupMenuItem(
                      child: Text('two'),
                      value: 'valtwo',
                    )
                  ])
        ],
      ),
      drawer: Drawer(),
      body: Container(
        child: Text('le valeur selectionner est $msg'),
      ),
    );
  }
}

class Customsearchdelegate extends SearchDelegate {
  List username = [
    "salim",
    "sami",
    "nourreddine",
    "mouhamed",
    "farouk",
    "hamza"
  ];

  List? filterList;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          // query = "";
        },
        icon: Icon(Icons.arrow_back),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.close));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("result is $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "${username[i]}",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
        itemCount: username.length,
      );
    } else {
      filterList = username
          .where((element) => element.contains(query))
          .toList(); // or startwith or contains or ....
      return ListView.builder(
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              //close(context, null);
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "${filterList![i]}",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
        itemCount: filterList!.length,
      );
    }
  }
} 






















/* import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //String? msg;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("salim boughnmi"),
          backgroundColor: Colors.amber,
          actions: [
            /* exemple Search delegate */
            IconButton(
                onPressed: () {
                  showSearch(
                      context: context, delegate: Customsearchdelegate());
                },
                icon: Icon(Icons.search)),

            /* PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                    setState(() {
                      msg = value;
                    });
                  },
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('one'),
                          value: 'valone',
                        ),
                        PopupMenuItem(
                          child: Text('two'),
                          value: 'valtwo',
                        )
                      ]) */
          ],
        ),
        drawer: Drawer(),
        body: Container(
            //child: Text('le valeur selectionner est $msg'),
            ),
      ),
    );
  }
}

class Customsearchdelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          // query = "";
        },
        icon: Icon(Icons.arrow_back),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.close));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("suggesions");
  }
} */
  