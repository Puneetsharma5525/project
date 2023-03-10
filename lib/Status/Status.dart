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
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.edit,color: Colors.black,),
            backgroundColor: Color(0xffcecaca),

          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.camera_alt),
            backgroundColor: MainColor,
          ),
        ],
      ),
    );
  }
}

