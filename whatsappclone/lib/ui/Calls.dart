import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/model/CallsModel.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List<CallsModel> callData = const [
    CallsModel(
        name: "Hitesh Choudhary",
        time: "10 April, 6:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Saksham Choudhary",
        time: "10 April, 6:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Raushan Jha",
        time: "10 April, 6:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Nitesh",
        time: "14 April, 6:08pm",
        imageUrl:
            "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Kaushal Jha",
        time: "11 April, 7:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Hitesh Choudhary",
        time: "10 April, 6:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Saksham Choudhary",
        time: "10 April, 6:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Raushan Jha",
        time: "10 April, 6:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Nitesh",
        time: "14 April, 6:08pm",
        imageUrl:
            "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Kaushal Jha",
        time: "11 April, 7:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Hitesh Choudhary",
        time: "10 April, 6:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Saksham Choudhary",
        time: "10 April, 6:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Raushan Jha",
        time: "10 April, 6:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Nitesh",
        time: "14 April, 6:08pm",
        imageUrl:
            "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    CallsModel(
        name: "Kaushal Jha",
        time: "11 April, 7:03 pm",
        imageUrl:
            "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            Divider(),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25.0,
                backgroundImage:
                    CachedNetworkImageProvider(callData[index].imageUrl),
              ),
              title: Text(callData[index].name),
              subtitle: Text(callData[index].time),
              trailing: Icon(
                Icons.call,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        );
      },
      itemCount: callData.length,
    );
  }
}
