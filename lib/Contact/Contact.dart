import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);
  @override
  State<Contact> createState() => _ContactState();
}
class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Select contact'),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.group),
              ),
              title: Text('New group'),
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_add),
              ),
              title: Text('New contact'),
              trailing: Icon(Icons.qr_code),
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.groups_sharp),
              ),
              title: Text('New community'),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text('Contacts on WhatsApp',style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            for(int a =0; a<=10; a++)...[
              ListTile(leading:  CircleAvatar(child: Icon(Icons.person,color: Colors.white,),backgroundColor: Colors.black12,),title: Text('Person$a'),subtitle: Text('Person$a'),),
            ],
          ],
        ),
      ),
    );
  }
}

