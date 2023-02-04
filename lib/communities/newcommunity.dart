import 'package:flutter/material.dart';

import '../whatsapp color data/whatsappcolor.dart';
class NewCommunity extends StatefulWidget {
  const NewCommunity({Key? key}) : super(key: key);

  @override
  State<NewCommunity> createState() => _NewCommunityState();
}

class _NewCommunityState extends State<NewCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColor,
        title: Text('New community'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SizedBox(
              height: 120,
              width: 120,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffcacad3),
                        borderRadius: BorderRadius.circular(15)),
                    height: 110,
                    width: 110,
                        
                    child: Image(
                      image: AssetImage('assets/community.png'),
                    ),
                  ),
                  Positioned(
                    child: Container(
                        decoration: BoxDecoration(
                          color: MainColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 15,
                          ),
                        )),
                    right: 0,
                    bottom: 0,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                decoration: InputDecoration(labelText: 'Community name')),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                    filled: true, fillColor: Colors.blue.shade50)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
