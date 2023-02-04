import 'package:flutter/material.dart';

import '../whatsapp color data/whatsappcolor.dart';
import 'newcommunity.dart';

class Communities extends StatefulWidget {
  const Communities({Key? key}) : super(key: key);

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Image.asset(
              'assets/communities.png',
            ),
          ),
          Text(
            'Introducing Communities',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Text(
                'Easily organise your related groups and send annoucements. Now, your communities, like neighbourhoods or schools, can have their own space.',
                style: TextStyle(color: Colors.black54),
                textAlign: TextAlign.center),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: MaterialButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>NewCommunity())),
              child: Text(
                'Start your community',
                style: TextStyle(color: Colors.white),
              ),
              color: MainColor,
              minWidth: double.infinity,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
            ),
          )
        ],
      ),
    );
  }
}
