import 'package:chat_app/User.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<User> list = [
    User("Samantha Barnett", "Hello how are you?", "12:20PM"),
    User("Lauren Brown", "Happy birthday", "12:20PM"),
    User("Linda Miller", "Build is done ", "01:10PM"),
    User("Lori Patterson", "Happy new year", "01/1/2020"),
    User("Linda Miller", "Can you pleae check now", "03/01/2020"),
    User("Danielle Rodriguez", "Taken care", "04/01/2020"),
    User("Danielle Rodriguez", "Taken care", "04/01/2020"),
    User("Samantha Barnett", "Hello how are you?", "12:20PM"),
    User("Lauren Brown", "Happy birthday", "12:20PM"),
    User("Linda Miller", "Build is done ", "01:10PM"),
    User("Lori Patterson", "Happy new year", "01/1/2020"),
    User("Linda Miller", "Can you pleae check now", "03/01/2020"),
    User("Danielle Rodriguez", "Taken care", "04/01/2020"),


  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(

            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(list[index].dpUrl+index.toString()+".jpg"),
            ),
            title:Text(list[index].name,
            style: TextStyle(

            ),
            ),
            subtitle: Text(list[index].lastMessage),
            trailing: Column(
              children: [
              
                Text(list[index].time),
                new Icon(Icons.check),

              ],
            ),
            // subtitle:  Icon(Icons.double_arrow_rounded)  ,

          );
        });
  }
}
