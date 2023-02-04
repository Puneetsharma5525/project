import 'package:flutter/material.dart';

import '../encrypted/encrypted.dart';
import '../whatsapp color data/whatsappcolor.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.link,
                color: Colors.white,
              ),
              backgroundColor: MainColor,
            ),
            title: Text(
              'Create all link',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Recent'),
          ),
          for (int i =0; i<4; i++)...[ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
              backgroundColor: MainColor,
            ),
            title: Text('User'),
            subtitle: Text('Yesterday, 11:15 am'),
            trailing: Icon(Icons.videocam,color: MainColor,),
          ),],

          Encrypted()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add_call),
        backgroundColor: MainColor,
      ),
    );
  }
}
