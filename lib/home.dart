import 'package:chat_app/chat_screen.dart';
import 'package:chat_app/home_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
        
          elevation: 0,
          backgroundColor: Colors.green,
          title: Text("WhatsApp"),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            Icon(Icons.more_vert)
          ],
          bottom: TabBar(
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALL")
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(),
            ChatScreen(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
