import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/api/fath.dart';
import '../Settings/Profile/profile.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<SimpleData> Profiledata = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select contact'),
      ),
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
              child: Text(
                'Contacts on WhatsApp',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            FutureBuilder(
              future: getDate(),
              builder: (context, snapshot) {
              if(snapshot.hasData){
                return
                  Container(
                    height: 500,
                    child: ListView.builder(itemCount: Profiledata.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage('${Profiledata[index].url}'),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.black12,
                          ),
                          title: Text('${Profiledata[index].title}'),
                          subtitle: Text('Person'),
                        );
                      },
                    ),
                  );
              }
              else{
                return Center(child: CircularProgressIndicator());
              }
            },)
          ],
        ),
      ),
    );
  }

  Future<List<SimpleData>> getDate() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        Profiledata.add(SimpleData.fromJson(index));
      }
      return Profiledata;
    } else {
      return Profiledata;
    }
  }
}
