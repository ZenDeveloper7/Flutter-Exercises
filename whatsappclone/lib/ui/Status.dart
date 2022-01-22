import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/customwidgets/StatusHeading.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
            leading: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              CircleAvatar(
                maxRadius: 25.0,
                backgroundImage: CachedNetworkImageProvider(
                    "https://images.pexels.com/photos/5691359/pexels-photo-5691359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
              ),
              _addStatusIcon()
            ]),
            title: Text("My status"),
            subtitle: Text("Tap to add status update")),
        StatusHeading(title: 'Viewed updates'),
      ],
    );
  }

  Widget _addStatusIcon() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        boxShadow: [
          BoxShadow(
              color: Colors.white, spreadRadius: 2, blurRadius: 0),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("hey")));
        },
        child: CircleAvatar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .secondary,
          maxRadius: 10.0,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 13.0,
          ),
        ),
      ),
    );
  }
}
