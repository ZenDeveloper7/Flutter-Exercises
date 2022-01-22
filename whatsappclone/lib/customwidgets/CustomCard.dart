import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomCard extends StatelessWidget {
  late String name, imageUrl, time;

  CustomCard(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25.0,
        backgroundImage: CachedNetworkImageProvider(
            imageUrl
        ),
      ),
      title: Text(name),
      subtitle: Text(time),
    );
  }
}
