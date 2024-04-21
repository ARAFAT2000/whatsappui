import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  String images='https://media.istockphoto.com/id/1317804578/photo/one-businesswoman-headshot-smiling-at-the-camera.jpg?s=612x612&w=0&k=20&c=EqR2Lffp4tkIYzpqYh8aYIPRr-gmZliRHRxcQC5yylY=';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(images),),
              title: Text('John '),
              subtitle: Text('Where are you ,now ? '),
              trailing: Text('8:52 AM '),
            );
          }),
    );
  }
}
