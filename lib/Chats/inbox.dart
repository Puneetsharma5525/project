import 'package:flutter/material.dart';
import '../whatsapp color data/whatsappcolor.dart';
import 'UserDetails.dart';

class ChatInbox extends StatelessWidget {
    ChatInbox({Key? key,required this.name,required this.number,required this.subtitle}) : super(key: key);
  String name;
  int number;
  String  subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ListTile(leading: Icon(Icons.person),title: Text('Partima Medam'),subtitle: Text('Online'),),
        leadingWidth: 25,
        title: Row(mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(child: const Icon(Icons.person,color: Colors.white,),backgroundColor: Colors.grey.shade400,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: InkWell(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [
                    Text('$name',overflow: TextOverflow.ellipsis,),
                    Text('$subtitle',style: TextStyle(fontSize: 13),overflow: TextOverflow.ellipsis,),
                  ],
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>   Userdetails(name: name,number: number,))),

              ),
            )
          ],
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.videocam),
          ),
          const Icon(Icons.call),
          PopupMenuButton(itemBuilder: (context)=>[
            const PopupMenuItem(child: Text('Group info'),),
            const PopupMenuItem(child: Text('Group media')),
            const PopupMenuItem(child: Text('Search')),
            const PopupMenuItem(child: Text('Mute notifications')),
            const PopupMenuItem(child: Text('Disappearing messages')),
            const PopupMenuItem(child: Text('Wallpaper')),
            const PopupMenuItem(child: Text('Group info'),),
            const PopupMenuItem(child: Text('Group media')),
            const PopupMenuItem(child: Text('Search')),
            const PopupMenuItem(child: Text('Mute notifications')),
          ])
        ],
        backgroundColor: MainColor,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/chatbg.png'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.5),
                    color: const Color(0xffffeecd)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('🔒 Messages are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them. Click to learn more.',style: TextStyle(fontSize: 12),textAlign: TextAlign.center,),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chat1('Hi there'),
                Chat1('Where r u now'),
                Chat1('Yah will be there'),
                Chat1('Where r u now'),
                Chat1('Where r u now'),
                const ChatInput(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding Chat1(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipPath(
        clipper: MyCustomClipper1() ,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),

            color: Color(0xffd9fdd3),
          ),

          child: Padding(
            padding: const EdgeInsets.only(right: 22,top: 8,bottom: 8,left: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('$text'),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                  child: Text(' 0${DateTime.now().hour.sign} : 0${DateTime.now().minute}',style: const TextStyle(color: Colors.grey,fontSize: 11),),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Icon(Icons.done_all,size: 20,color: Colors.blue,),
                )
                // Icon(Icons.check,size: 19,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class MyCustomClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(20, size.height);
    path.arcToPoint(Offset(size.width - 12, 13),
        radius: const Radius.circular(1), clockwise: false);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class ChatInput extends StatefulWidget {
  const ChatInput({Key? key}) : super(key: key);

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(15),
                  borderSide: BorderSide.none
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Icon(Icons.emoji_emotions_outlined,color: Colors.grey[700],),
                    Expanded(
                      child: TextFormField(
                        maxLines: 6,
                        minLines: 1,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                            hintText: 'Massage',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintStyle: TextStyle(color: Colors.grey)
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.link,color: Colors.grey[700],),
                        const SizedBox(width: 10,),
                        Icon(Icons.camera_alt,color: Colors.grey[700],),
                      ],
                    ),

                  ],),
              ),
            ),
          ),
          const CircleAvatar(
            child: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}

