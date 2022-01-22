import 'package:flutter/material.dart';
import 'package:whatsappclone/ui/Calls.dart';
import 'package:whatsappclone/ui/Camera.dart';
import 'package:whatsappclone/ui/Chat.dart';
import 'package:whatsappclone/ui/Status.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late int selectedIndex;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedIndex = 1;
      _tabController =
          TabController(length: 4, initialIndex: selectedIndex, vsync: this);
    });
  }

  _moveScreen(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whatsapp',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabItemsList(),
          onTap: (index) {
            _moveScreen(index);
          },
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [Camera(), Chat(), Status(), Calls()],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }

  List<Widget> _tabItemsList() {
    List<Widget> tabItems = [
      Tab(
        icon: Icon(Icons.camera_alt),
      ),
      Tab(
        child: Text(
          'Chat'
        ),
      ),
      Tab(
        child: Text(
          'Status'
        ),
      ),
      Tab(
        child: Text(
          'Calls'
        ),
      )
    ];
    return tabItems;
  }
}
