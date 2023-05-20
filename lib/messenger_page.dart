import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/detail_chat.dart';

import 'package:instagram/homepage.dart';
import 'package:instagram/new_message.dart';
import 'package:instagram/user_model.dart';

class Messenger extends StatefulWidget {
  const Messenger({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                                builder: (context) => const HomeScreen(),
                              ))),
                          icon: const Icon(Icons.arrow_back_ios)),
                      const Text(
                        'chen_diana15',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          onPressed: () => print('Create')),
                    ],
                  ),
                  Row(
                    children: [
                      PopupMenuButton(
                        position: PopupMenuPosition.under,
                        icon: const Icon(Icons.more_horiz_outlined),
                        itemBuilder: (context) => [
                          PopupMenuItem(

                              // height: double.infinity,
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  )),
                              title: const Text(
                                'Select chats',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing:
                                  const Icon(Icons.account_balance_outlined),
                            ),
                          )),
                          PopupMenuItem(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                                onTap: () {},
                                title: const Text(
                                  'tools',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                trailing:
                                    const Icon(Icons.star_border_outlined)),
                          ))
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.insights_rounded),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const New_Messenger(),
                            )),
                      ),
                      IconButton(
                        icon: const Icon(Icons.note_alt_outlined),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const New_Messenger(),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Icon(Icons.search),
                          ),
                          hintText: 'Search',
                          border: InputBorder
                              .none, //លុបបន្ទាត់ដេកដែលនៅក្រោមTextfield
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CupertinoButton(
                      child: const Text('Filter'),
                      onPressed: () {
                        setState(() {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              constraints: const BoxConstraints(
                                  maxHeight: 250, maxWidth: double.infinity),
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(25.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 160),
                                              child: Text(
                                                'Filter',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Spacer(),
                                            Text('Clear'),
                                          ],
                                        ),
                                      ),
                                      const Divider(
                                        height: 5,
                                        thickness: 1,
                                      ),
                                      const ListTile(
                                        leading: Text('Unread'),
                                        trailing:
                                            Icon(Icons.camera_alt_outlined),
                                      ),
                                      const ListTile(
                                        leading: Text('Unanswered'),
                                        trailing:
                                            Icon(Icons.camera_alt_outlined),
                                      ),
                                      const ListTile(
                                        leading: Text('Flagged'),
                                        trailing:
                                            Icon(Icons.camera_alt_outlined),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: const Center(
                          child: Text(
                            'Primary',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[300]),
                        child: const Center(
                          child: Text(
                            'General',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[300]),
                        child: const Center(
                          child: Text(
                            'Requests',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                itemCount: chat.length,
                itemBuilder: (context, index) => Container(
                  child: Card(
                    //color: Colors.green,
                    elevation: 0,
                    child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailChat(),
                          )),
                      leading: CircleAvatar(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('${chat[index].image}'))),
                        ),
                      ),
                      title: Text(chat[index].username!),
                      subtitle: const Text('Active now'),
                      trailing: const Icon(Icons.camera),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
// Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: const TextField(
//                     decoration: InputDecoration(
//                       icon: Padding(
//                         padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
//                         child: Icon(Icons.search),
//                       ),
//                       hintText: 'Search',
//                       border:
//                           InputBorder.none, //លុបបន្ទាត់ដេកដែលនៅក្រោមTextfield
//                     ),
//                   ),
//                 ),
//                 CupertinoButton(
//                   child: const Text('Filter'),
//                   onPressed: () => print('Filter'),
//                 ),
//               ],
//             )
