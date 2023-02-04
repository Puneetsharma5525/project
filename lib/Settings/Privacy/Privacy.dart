import 'package:flutter/material.dart';

import '../../whatsapp color data/whatsappcolor.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy'),backgroundColor: MainColor,),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text('Who can see my personal info',style: TextStyle(fontWeight: FontWeight.w500),),
              ),
              ListTile(
                title: Text('Last seen and online'),
                subtitle: Text('Nobody'),
              ),
              ListTile(
                title: Text('Profile photo'),
                subtitle: Text('Nobody'),
              ),
              ListTile(
                title: Text('About'),
                subtitle: Text('My contacts'),
              ),
              ListTile(
                title: Text('Status'),
                subtitle: Text('483 contacts excluded'),
              ),
              ListTile(
                title: Text('Read receipts'),
                subtitle: Text('''If turned off, you won't sened or receive Read receipts. Read receipts are always sent for group chats.'''),
                trailing: Switch(value: true,
                    onChanged: (value) {

                    },)
              ),
              Divider(),
              ListTile(
                title: Text('Disappearing messages'),
                subtitle: Text('Default message timer, Apply timer to chats'),
              ),
              ListTile(
                title: Text('Groups'),
                subtitle: Text('MyContacts'),
              ),
              ListTile(
                title: Text('Live location'),
                subtitle: Text('none'),
              ),
              ListTile(
                title: Text('Blocked contacts'),
                subtitle: Text('6'),
              ),
              ListTile(
                title: Text('Fingerprint lock'),
                subtitle: Text('Disabled'),
              ),

            ],
          ),
        ),

    );
  }
}

