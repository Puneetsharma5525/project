import 'package:flutter/material.dart';

import '../Contact/Contact.dart';
import '../encrypted/encrypted.dart';
import '../whatsapp color data/whatsappcolor.dart';
import 'inbox.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          for(int x = 1 ; x<20; x++)...[
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('Pratima Medam'),
              subtitle: Text('app-release.apk'),
              trailing: Text('25/10/23'),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Inbox())),
            ),
          ],
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Tap and hold on a chat for more options',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
            ),
            Encrypted()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact())),
        child: Icon(Icons.chat),
        backgroundColor: MainColor,
      ),
    );
  }
}

