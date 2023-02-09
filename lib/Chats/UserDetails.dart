import 'package:flutter/material.dart';

import '../whatsapp color data/whatsappcolor.dart';

class Userdetails extends StatelessWidget {
    Userdetails({Key? key,required this.name,required this.number}) : super(key: key);
    int number;
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: MainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: const Icon(Icons.person,color: Colors.white,size: 55,),
                    backgroundColor: Colors.grey[400],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text('$name',style: TextStyle(fontSize: 20),),
                  ),
                  Text('+91 $number',style: TextStyle(fontSize: 15,color: Colors.grey[700]),),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FirstWidget(Icons.call,'Call'),
                        FirstWidget(Icons.videocam,'Video'),
                        FirstWidget(Icons.currency_rupee_rounded,'Pay'),
                        FirstWidget(Icons.search,'Search'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Text('Hey there! I am using WhatsApp.'),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: const [
                  ListTile(leading: Icon(Icons.notifications),title: Text('Mute notifications'),trailing: MySwitch(),
                  ),
                  ListTile(leading: Icon(Icons.music_note),title: Text('Custom notification'),),
                  ListTile(leading: Icon(Icons.image),title: Text('Media visibility'),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    ListTile(leading: Icon(Icons.lock),title: Text('Encryption'),subtitle: Text('Messages and calls are end-to-end encrypted. Tap to verify.'),),
                    ListTile(leading: Icon(Icons.electric_meter_sharp),title: Text('Disappearing messages'),subtitle: Text('off'),),

                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Text('No group in common',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.grey.shade800),),
                  ),
                    ListTile(leading: CircleAvatar(child: Icon(Icons.group)),title: Text('Create group with $name'),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(leading: const Icon(Icons.block,color: Colors.red,),title: Text('Block $name',style: TextStyle(color: Colors.red.shade700),), ),
                    ListTile(leading: const Icon(Icons.thumb_down,color: Colors.red,),title: Text('Report Mohit Menna',style: TextStyle(color: Colors.red.shade700),), ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column FirstWidget(Widget,String title) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Icon(Widget,size: 26,color: MainColor,),
        ),
        Text(title,style: TextStyle(color: MainColor),)
      ],
    );
  }
}


class MySwitch extends StatefulWidget {
  const MySwitch({Key? key}) : super(key: key);

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(value: true,
      onChanged: (value) {

      },);
  }
}


