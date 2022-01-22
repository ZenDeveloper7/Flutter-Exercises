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
      /*appBar: AppBar(
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
      ),*/
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
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
            )
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [Camera(), Chat(), Status(), Calls()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: _setIcon(selectedIndex),
        onPressed: () {},
      ),
    );
  }

  List<Widget> _tabItemsList() {
    List<Widget> tabItems = const [
      Tab(
        icon: Icon(Icons.camera_alt),
      ),
      Tab(
        child: Text('Chat'),
      ),
      Tab(
        child: Text('Status'),
      ),
      Tab(
        child: Text('Calls'),
      )
    ];
    return tabItems;
  }

  Widget _setIcon(int index) {
    var messageIcon = Icon(
      Icons.message,
      color: Colors.white,
    );
    var statusIcon = Icon(
      Icons.contacts,
      color: Colors.white,
    );
    var callIcon = Icon(
      Icons.call_missed,
      color: Colors.white,
    );
    /*switch (index) {
      case 1:
        return messageIcon;
      case 2:
        return statusIcon;
      case 3:
        return callIcon;
    }*/
    if (index == 1) {
      return messageIcon;
    } else if (index == 2) {
      return statusIcon;
    } else {
      return callIcon;
    }
  }
}
