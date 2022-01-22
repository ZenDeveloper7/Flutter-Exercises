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
  late bool searchView;
  late List<PopupMenuItem<String>> menuList;

  @override
  void initState() {
    super.initState();
    searchView = false;
    selectedIndex = 1;
    _tabController =
        TabController(length: 4, initialIndex: selectedIndex, vsync: this);
    _setMenuList(selectedIndex);
  }

  _moveScreen(int index) {
    setState(() {
      selectedIndex = index;
      _setMenuList(selectedIndex);
    });
  }

  Future<bool> _closeSliverBar() async {
    setState(() {
      if (searchView) searchView = false;
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _closeSliverBar,
      child: Scaffold(
        appBar: searchView
            ? AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _closeSliverBar,
                ),
                title: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              )
            : null,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, isScrolled) {
            return [
              if (!searchView)
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  title: const Text(
                    'Whatsapp',
                    style: TextStyle(color: Colors.white),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            searchView = true;
                          });
                        },
                        icon: const Icon(Icons.search)),
                    PopupMenuButton(
                      itemBuilder: (context) {
                        return _getMenuList();
                      },
                      onSelected: (value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(value.toString())));
                      },
                    ),
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
            children: const [Camera(), Chat(), Status(), Calls()],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: _setIcon(selectedIndex),
          onPressed: () {},
        ),
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

  List<PopupMenuItem<String>> _getMenuList() {
    return menuList;
  }

  Widget _setIcon(int index) {
    var messageIcon = const Icon(
      Icons.message,
      color: Colors.white,
    );
    var statusIcon = const Icon(
      Icons.contacts,
      color: Colors.white,
    );
    var callIcon = const Icon(
      Icons.call_missed,
      color: Colors.white,
    );
    if (index == 1) {
      return messageIcon;
    } else if (index == 2) {
      return statusIcon;
    } else {
      return callIcon;
    }
  }

  _setMenuList(int selectedIndex) {
    switch (selectedIndex) {
      case 1:
        menuList = const [
          PopupMenuItem<String>(
            child: Text('New Group'),
            value: 'New Group',
          ),
          PopupMenuItem<String>(
            child: Text('New broadcast'),
            value: 'New broadcast',
          ),
          PopupMenuItem<String>(
            child: Text('Linked Devices'),
            value: 'Linked Devices',
          ),
          PopupMenuItem<String>(
            child: Text('Starred Messages'),
            value: 'Starred Messages',
          ),
          PopupMenuItem<String>(
            child: Text('Payments'),
            value: 'Payments',
          ),
          PopupMenuItem<String>(
            child: Text('Settings'),
            value: 'Settings',
          ),
        ];
        break;
      case 2:
        menuList = const [
          PopupMenuItem<String>(
            child: Text('Status Privacy'),
            value: 'Status Privacy',
          ),
          PopupMenuItem<String>(
            child: Text('Settings'),
            value: 'Settings',
          )
        ];
        break;
      case 3:
        menuList = const [
          PopupMenuItem<String>(
            child: Text('Clear call log'),
            value: 'Clear call log',
          ),
          PopupMenuItem<String>(
            child: Text('Settings'),
            value: 'Settings',
          )
        ];
        break;
    }
  }
}
