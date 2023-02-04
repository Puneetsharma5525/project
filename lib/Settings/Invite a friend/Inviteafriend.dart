import 'package:flutter/material.dart';
import 'package:project/whatsapp%20color%20data/whatsappcolor.dart';

class Inviteafriend extends StatefulWidget {
  const Inviteafriend({Key? key}) : super(key: key);

  @override
  State<Inviteafriend> createState() => _InviteafriendState();
}

class _InviteafriendState extends State<Inviteafriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Invite a friend'),backgroundColor: MainColor,
      actions: [
        Icon(Icons.search)
      ],),
      body: Column(
        children: [
          ListTile(leading: CircleAvatar(child: Icon(Icons.share),),title: Text('Share linik',style: TextStyle(fontWeight: FontWeight.w500),),)
        ],
      ),
      
    );
  }
}

