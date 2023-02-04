import 'package:flutter/material.dart';
import 'package:project/whatsapp%20color%20data/whatsappcolor.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  late bool BoolValue =false;
  late bool BoolValue1 =true;
  late bool BoolValue2 =true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: MainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Display',style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            ListTile(
              leading: Icon(Icons.sunny_snowing),
              title: Text('Theme'),
              subtitle: Text('Light'),
            ),
            ListTile(
              leading: Icon(Icons.wallpaper),
              title: Text('Wallpaper'),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Chat settings',style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            ListTile(
              title: Text('Enter is send '),
              subtitle: Text('Enter key will send your message'),
              trailing: Switch(value: BoolValue , onChanged: (bool value) { setState(() {
                BoolValue =value;
              }); },

              ),
            ),
            ListTile(
              title: Text('Media visibility'),
              subtitle: Text('''Show newly downloaded media in your devices's gallery '''),
              trailing: Switch(value: BoolValue1 , onChanged: (bool value) { setState(() {
                BoolValue1 =value;
              }); },

              ),
            ),
            ListTile(
              title: Text('Font size'),

              subtitle: Text('Medium'),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Archived chats',style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            ListTile(
              title: Text('Keep chats archived'),
              subtitle: Text('Archived chats will remain archived when you receive a new massage'),
              trailing: Switch(value: BoolValue2 , onChanged: (bool value) { setState(() {
                BoolValue2 =value;
              }); },

              ),
            ),
            Divider(),
            ListTile(leading: Icon(Icons.backup),title: Text('Chat backup'),),
            ListTile(leading: Icon(Icons.history),title: Text('Chat history'),)
          ],
        ),
      ),
    );
  }
}

