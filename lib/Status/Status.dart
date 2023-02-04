import 'package:flutter/material.dart';

import '../encrypted/encrypted.dart';
import '../whatsapp color data/whatsappcolor.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.access_time),
            ),
            title: Text('My status'),
            subtitle: Text('Tap to add status update'),
          ),
          Encrypted()

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.camera_alt),
        backgroundColor: MainColor,
      ),
    );
  }
}

