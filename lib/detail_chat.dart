import 'package:flutter/material.dart';
import 'package:instagram/messenger_page.dart';
import 'package:instagram/user_model.dart';

class DetailChat extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final UserModel? user_chat_detail; // Dynamic
  // ignore: non_constant_identifier_names
  const DetailChat({Key? key, required this.user_chat_detail})
      : super(key: key);

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (() => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Messenger(),
                              ))),
                          icon: const Icon(Icons.arrow_back_ios)),
                      CircleAvatar(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      '${widget.user_chat_detail!.image}'))),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.user_chat_detail!.username.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          const Text('Active 5h ago'),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: const Icon(Icons.call_outlined),
                          onPressed: () => print('Contact')),
                      IconButton(
                          icon: const Icon(Icons.video_camera_back_outlined),
                          onPressed: () => print('Camera')),
                      IconButton(
                          icon: const Icon(Icons.flag_outlined),
                          onPressed: () => print('Page')),
                    ],
                  ),
                ],
              ),
              const Divider(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
