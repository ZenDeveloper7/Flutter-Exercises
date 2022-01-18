import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String? name, email;
  const HomePage({Key? key, @required this.name, this.email}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(widget.name!),
              accountEmail: Text(widget.email!),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text("ZP"),
              ),
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Category"),
              trailing: Icon(Icons.card_travel),
              onTap: () => Navigator.of(context).pushNamed("/category"),
            ),
            ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.home_work),
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Home Page")],
        ),
      ),
    );
  }
}
