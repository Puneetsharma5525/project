import 'package:flutter/material.dart';

import '../Contact/Contact.dart';
import '../datafile.dart';
import '../encrypted/encrypted.dart';
import '../whatsapp color data/whatsappcolor.dart';
import 'inbox.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => ChatState();
}

class ChatState extends State<Chat> {
  List<String>  name = ['Mukul Dixit','Mohanlal Master','Mohit Jatin','Ajay Gokhale','Mohan Sidhu','Kirti Nayar','raj kumar','ram singh','preetam kumar','kali charan','supriyal sen','pooran chand sharma','rajkumar chawla','mohd ataullah','md mustafa','dipendra kumar','akash gupta'];
  List<String>  date = ['01/02/23','10/02/23','11/02/23','12/02/23','12/02/23','22/02/23','22/02/23','25/02/23','25/02/23','25/02/23','25/02/23','25/02/23','25/02/23','25/02/23','25/02/23','25/2/23','25/02/23' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          for(int x = 0 ; x<Users.length; x++)...[
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('${Users[x].name}'),
              subtitle: Text('${Users[x].subtitle}'),
              trailing: Text('${Users[x].date}'),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatInbox(name: Users[x].name, number: Users[x].number, subtitle: Users[x].subtitle,))),
            ),
          ],
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Tap and hold on a chat for more options',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
            ),
            Encrypted()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact())),
        child: Icon(Icons.chat),
        backgroundColor: MainColor,
      ),
    );
  }
}

