import 'package:flutter/material.dart';

import '../whatsapp color data/whatsappcolor.dart';
import 'UserDetails.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
          // ListTile(leading: Icon(Icons.person),title: Text('Partima Medam'),subtitle: Text('Online'),),
       leadingWidth: 25,
        title: Row(mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: Colors.grey.shade400,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: InkWell(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Developer Team ',overflow: TextOverflow.ellipsis,),
                    Text('Developer Team',style: TextStyle(fontSize: 13),overflow: TextOverflow.ellipsis,),
                  ],
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> UserDetails())),

              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.videocam),
          ),
          Icon(Icons.call),
          PopupMenuButton(itemBuilder: (context)=>[
            PopupMenuItem(child: Text('Group info'),),
            PopupMenuItem(child: Text('Group media')),
            PopupMenuItem(child: Text('Search')),
            PopupMenuItem(child: Text('Mute notifcations')),
            PopupMenuItem(child: Text('Disappering messages')),
            PopupMenuItem(child: Text('Wallpaper')),
            PopupMenuItem(child: Text('More')),
          ])
        ],
        backgroundColor: MainColor,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/chatbg.png'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.5),
                  color: Color(0xffffeecd)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('🔒 Messages are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them. Click to learn more.',style: TextStyle(fontSize: 12),textAlign: TextAlign.center,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
