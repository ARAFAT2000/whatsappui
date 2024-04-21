import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/model.dart';
import 'package:whatsappui/screen/call_screen.dart';
import 'package:whatsappui/screen/chats_screen.dart';
import 'package:whatsappui/screen/status_screen.dart';


class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
      title: Text('WhatsApp'),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),

              PopupMenuButton(
                    icon: Icon(Icons.more_vert),
                      itemBuilder: (context,)=>[
                        const   PopupMenuItem(
                          value: 1,
                            child: Text('New Group')),

                        const   PopupMenuItem(
                            value: 2,
                            child: Text('Settings')),
                        const     PopupMenuItem(
                            value: 3,
                            child: Text('Log Out')),
                      ]),


            SizedBox(
              width: 15,
            ),
          ],
          bottom:const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_enhance_rounded),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Call",
                ),

            ]),
        ),
body:const TabBarView(
dragStartBehavior: DragStartBehavior.start,
    children: [
      Center(child: Text('Camera')),
      ChatScreen(),
      StatusScreen(),
      CallScreen(),
    ]),
      ),
    );
  }

}
