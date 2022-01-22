import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/model/ChatModel.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<ChatModel> messageData = const [
    ChatModel(
        name: "Hitesh Choudhary",
        message: "Learn Code Online",
        time: "10:12",
        imageUrl:
            "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    ChatModel(
        name: "Saksham",
        message: "welcome to flutter course",
        time: "02:16",
        imageUrl:
            "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    ChatModel(
        name: "Raushan Jha",
        message:
            "I gave you the chance of aiding me willingly, but you have elected the way of pain.",
        time: "11:11",
        imageUrl:
            "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    ChatModel(
        name: "Nitesh",
        message: "Python ",
        time: "20:21",
        imageUrl:
            "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    ChatModel(
        name: "Kaushal Jha",
        message: "The dark fire will not avail you! Flame of Udûn!",
        time: "1:12",
        imageUrl:
            "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    ChatModel(
        name: "Raushan Jha",
        message:
            "I gave you the chance of aiding me willingly, but you have elected the way of pain.",
        time: "11:11",
        imageUrl:
            "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    ChatModel(
        name: "Nitesh",
        message: "Python ",
        time: "20:21",
        imageUrl:
            "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    ChatModel(
        name: "Kaushal Jha",
        message: "The dark fire will not avail you! Flame of Udûn!",
        time: "1:12",
        imageUrl:
            "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  maxRadius: 25.0,
                  backgroundColor: Colors.black,
                  backgroundImage:
                      CachedNetworkImageProvider(messageData[index].imageUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(messageData[index].name),
                    Text(
                      messageData[index].time,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(messageData[index].message),
                ),
              ),
              (index != (messageData.length - 1))
                  ? const Divider(
                      thickness: 2.0,
                    )
                  : const Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: Text(
                        'Tap and hold on a chat for more options',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    )
            ],
          );
        },
        itemCount: messageData.length);
  }
}
