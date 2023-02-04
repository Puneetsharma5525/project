import 'package:flutter/material.dart';
import 'package:project/whatsapp%20color%20data/whatsappcolor.dart';

class Storage_date extends StatefulWidget {
  const Storage_date({Key? key}) : super(key: key);

  @override
  State<Storage_date> createState() => _Storage_dateState();
}

class _Storage_dateState extends State<Storage_date> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColor,
        title: Text('Storage and data'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.file_copy),
            title: Text('Mange storage'),
            subtitle: Text('663 kb'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.data_usage_outlined),
            title: Text('Network usage'),
            subtitle: Text('208.8 MB sent . 127.9 MB received'),
          ),
          ListTile(
            title: Text('Use less data for calls'),
            trailing: Switch(
              onChanged: (context){
              },
              value: true,
            ),
          ),
          Divider(),
          Text('Media auto-download'),
          Text('Voice messages are always automatically downloaded')
        ],
      ),
    );
  }
}

