import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WhatsApp(),
    );
  }
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.abc),
          title: const Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
          bottom: const TabBar(tabs: [
            Tab(child: Text("Chats")),
            Tab(child: Text("Status")),
          ]),
        ),
        body: TabBarView(
          children: [

            ListViewTabScreen(),
            GridViewTabScreen(),
          ],
        ),
      ),
    );
  }
}

class GridViewTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrColor = [Colors.red, Colors.amber, Colors.black, Colors.green];
    return GridView.count(
      crossAxisCount: 2,
 );
  }
}

class ListViewTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      ListTile(
        leading: Icon(Icons.abc),
        title: Text("BABA SAIN"),
        subtitle: Text("message sent"),
      ),
      ListTile(
        leading: Icon(Icons.abc),
        title: Text("BHAI"),
        subtitle: Text("message sent"),
      ),
    ]);
  }
}