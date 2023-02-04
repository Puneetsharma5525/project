import 'package:flutter/material.dart';
import 'package:project/whatsapp%20color%20data/whatsappcolor.dart';

class Notitfications extends StatefulWidget {
  const Notitfications({Key? key}) : super(key: key);

  @override
  State<Notitfications> createState() => _NotitficationsState();
}

class _NotitficationsState extends State<Notitfications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: MainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Converstion tones'),
              subtitle: Text('Play sounds for incoming and outgoing messages.'),
              trailing: Switch(
                onChanged: (context){}, value: true,
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Messages',style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            ListTile(
              title: Text('Notification tone'),
              subtitle: Text('Default ringtone (notice_audition.ogg)'),
            ),
            ListTile(
              title: Text('Vibrate'),
              subtitle: Text('Default'),
            ),
            ListTile(
              title: Text('Popup notification'),
              subtitle: Text('No popup'),
            ),
            ListTile(
              title: Text('Use high priority notifications'),
              subtitle: Text('Show previews of notifications at the top of the screen'),
              trailing: Switch(
                onChanged: (context){
                },
                value: true,
              ),
            ),
            ListTile(
              title: Text('Reaction Norifications'),
              subtitle: Text('Show notifications for reaction to messages you send'),
              trailing: Switch(
                onChanged: (context){
                },
                value: true,
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Groups',style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            ListTile(
              title: Text('Notification tone'),
              subtitle: Text('Default ringtone (notice_audition.ogg)'),
            ),
            ListTile(
              title: Text('Vibrate'),
              subtitle: Text('Popup notification'),
            ),
            ListTile(
              title: Text('Light'),
              subtitle: Text('White'),
            ),
            ListTile(
              title: Text('Use high priority notifcations'),
              subtitle: Text('Show privews of notifications at the top of the screen'),
              trailing: Switch(
                onChanged: (context){
                },
                value: true,
              ),
            ),
            ListTile(
              title: Text('Reaction Norifications'),
              subtitle: Text('Show notifications for reaction to messages you send'),
              trailing: Switch(
                onChanged: (context){
                },
                value: true,
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Calls',style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            ListTile(
              title: Text('Ringtone'),
              subtitle: Text('Default ringtone (Breeze.ogg)'),
            ),
            ListTile(
              title: Text('Vibreate'),
              subtitle: Text('Default'),
            ),
          ],
        ),
      ),
    );
  }
}

