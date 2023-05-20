// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:instagram/homepage.dart';
import 'package:instagram/user_model.dart';

class Comment_Page extends StatefulWidget {
  Comment_Page({Key? key}) : super(key: key);

  @override
  State<Comment_Page> createState() => _Comment_PageState();
}

class _Comment_PageState extends State<Comment_Page> {
  List<UserModel> userComment = [
    UserModel(
        id: 1,
        image: 'assets/images/husky4.jfif',
        username: 'Husky',
        like: 10,
        postimage: [
          'assets/images/Jack.jfif',
          'assets/images/chan.jpg',
          'assets/images/husky4.jfif'
        ],
        time: 30,
        caption: 'Hi',
        location: 'Takeo'),
    UserModel(
      id: 2,
      username: 'Jack',
      image: 'assets/images/Jack.jfif',
      like: 20,
      postimage: [
        'assets/images/Riem.jpg'
            'assets/images/jasmin.jpg',
        'assets/images/IMG_4290.jpg',
        'assets/images/husky4.jfif'
      ],
      time: 40,
      caption: 'Hello',
      location: 'Kompong Cham',
    ),
    UserModel(
      id: 3,
      username: 'Chan',
      image: 'assets/images/chan.jpg',
      like: 30,
      postimage: [
        'assets/images/husky4.jfif'
            'assets/images/Jack.jfif',
        'assets/images/chan.jpg',
      ],
      time: 50,
      caption: 'Hey',
      location: 'Battombang',
    ),
  ];
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
                  IconButton(
                    onPressed: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ))),
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Text(
                    'Comment',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send_outlined),
                    onPressed: () {},
                  )
                ],
              ),
              const Divider(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      //physics: NeverScrollableScrollPhysics(),
                      itemCount: favoritePeople.length,
                      itemBuilder: (context, index) => Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: ListTile(
                            onTap: () {},
                            leading: CircleAvatar(
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            '${userComment[index].image}'))),
                              ),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  userComment[index].username!,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${userComment[index].time}w",
                                ),
                              ],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  userComment[index].caption!,
                                  style: const TextStyle(color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text('Reply')
                              ],
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border_outlined),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
//Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     height: 80,
              //     width: double.infinity,
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         const Text(
              //           'New posts from your favorites will appear higher in feed. Only you can see who you add or remove.',
              //           textAlign: TextAlign.center,
              //         ),
              //         CupertinoButton(
              //             onPressed: () {
              //               showModalBottomSheet(
              //                   shape: RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(16)),
              //                   constraints:
              //                       const BoxConstraints(maxHeight: 350),
              //                   context: context,
              //                   builder: (BuildContext context) {
              //                     return Padding(
              //                       padding: const EdgeInsets.all(32.0),
              //                       child: Column(
              //                         mainAxisAlignment:
              //                             MainAxisAlignment.spaceBetween,
              //                         children: const [
              //                           Text(
              //                             'How favorites works',
              //                             style: TextStyle(
              //                                 fontWeight: FontWeight.bold,
              //                                 fontSize: 16),
              //                             textAlign: TextAlign.center,
              //                           ),
              //                           Divider(
              //                             height: 5,
              //                           ),
              //                           ListTile(
              //                             leading: Icon(
              //                                 Icons.mobile_friendly_rounded),
              //                             title: Text(
              //                               'Add accounts to your favorites list',
              //                               style: TextStyle(
              //                                   fontWeight: FontWeight.bold),
              //                             ),
              //                             subtitle: Text(
              //                                 'You can search for accounts or view suggestions based your activity.'),
              //                           ),
              //                           ListTile(
              //                             leading:
              //                                 Icon(Icons.star_border_outlined),
              //                             title: Text(
              //                               'See favorites higher in your feed',
              //                               style: TextStyle(
              //                                   fontWeight: FontWeight.bold),
              //                             ),
              //                             subtitle: Text(
              //                                 'New posts from your favorites will appear higher in feed so you don not miss out.'),
              //                           ),
              //                           ListTile(
              //                             leading:
              //                                 Icon(Icons.privacy_tip_outlined),
              //                             title: Text(
              //                               'Only you can see who is on your list',
              //                               style: TextStyle(
              //                                   fontWeight: FontWeight.bold),
              //                             ),
              //                             subtitle: Text(
              //                                 'Your favorites will be not notified when you add or remove them.'),
              //                           ),
              //                         ],
              //                       ),
              //                     );
              //                   });
              //             },
              //             child: const Text(
              //               'How it works',
              //               style: TextStyle(fontSize: 13),
              //             ))
              //       ],
              //     ),
              //   ),
              // ),
              // const Divider(
              //   height: 5,
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     height: 40,
              //     decoration: BoxDecoration(
              //       color: Colors.grey[300],
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //     child: const TextField(
              //       decoration: InputDecoration(
              //         icon: Padding(
              //           padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
              //           child: Icon(Icons.search),
              //         ),
              //         hintText: 'Search',
              //         border:
              //             InputBorder.none, //លុបបន្ទាត់ដេកដែលនៅក្រោមTextfield
              //       ),
              //     ),
              //   ),
              // ),
