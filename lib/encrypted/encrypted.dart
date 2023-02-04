import 'package:flutter/material.dart';

class Encrypted extends StatefulWidget {
  const Encrypted({Key? key}) : super(key: key);

  @override
  State<Encrypted> createState() => _EncryptedState();
}

class _EncryptedState extends State<Encrypted> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Divider(color: Colors.black54,thickness: 0.1,),
        Padding(
          padding: const EdgeInsets.only(bottom: 100,top: 5),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock,size: 16,color: Colors.black54,),
              Text(' Your personal message are ',style: TextStyle(color: Colors.black54,fontSize: 12),),
              Text('end-to-end encrypted',style: TextStyle(color: Colors.green,fontSize: 12),),
            ],
          ),
        )],
    );
  }
}
