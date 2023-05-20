// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/comment_page.dart';

import 'package:instagram/user_acc.dart';
import 'package:instagram/user_model.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'appbar.dart';
import 'fri_story.dart';
import 'user_model.dart';

class Body_HomePage extends StatefulWidget {
  Body_HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<Body_HomePage> createState() => _Body_HomePageState();
}

class _Body_HomePageState extends State<Body_HomePage> {
  int imageIndex = 0;
  List<UserModel> userpost = [
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
        'assets/images/Riem.jpg',
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
        'assets/images/husky4.jfif',
        'assets/images/Jack.jfif',
        'assets/images/chan.jpg',
      ],
      time: 50,
      caption: 'Hey',
      location: 'Battombang',
    ),
  ];

  List<UserModel> story = [
    UserModel(
      image: 'assets/images/jasmin.jpg',
      username: 'Jasmin',
      id: 1,
      like: 30,
      postimage: [],
      time: 50,
      caption: '',
      location: '',
    ),
    UserModel(
      image: 'assets/images/chan.jpg',
      username: 'ch.an8190',
      id: 2,
      like: 30,
      postimage: [],
      time: 50,
      caption: '',
      location: '',
    ),
    UserModel(
      image: 'assets/images/Jack.jfif',
      username: 'Jack',
      id: 3,
      like: 30,
      postimage: [],
      time: 50,
      caption: '',
      location: '',
    ),
    UserModel(
      image: 'assets/images/husky4.jfif',
      username: 'Husky_Boyz',
      id: 4,
      like: 30,
      postimage: [],
      time: 50,
      caption: '',
      location: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarCustom(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const UserAcc(),
                    Row(
                      children: story.map((e) => Fri_Story(user: e)).toList(),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 3,
            ),
            Container(
              height: 600,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: userpost.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            '${userpost[index].image}')),
                                  )),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 6,
                                  ),
                                  child: Text(
                                    userpost[index].username!,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  '${userpost[index].location}',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  showModalBottomSheet(
                                      isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      constraints: const BoxConstraints(
                                        maxHeight: 520,
                                      ),
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Padding(
                                          padding: const EdgeInsets.all(32.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.share),
                                                          ),
                                                          Text('Share')
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.link),
                                                          ),
                                                          Text('Link')
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .bookmark_border_outlined),
                                                          ),
                                                          Text('Save')
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.qr_code),
                                                          ),
                                                          Text('QR code')
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Column(
                                                  children: const [
                                                    ListTile(
                                                      leading: Icon(Icons
                                                          .star_border_outlined),
                                                      title: Text(
                                                        'Add to favorites',
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 1,
                                                      thickness: 1,
                                                    ),
                                                    ListTile(
                                                      leading: Icon(Icons
                                                          .child_friendly_outlined),
                                                      title: Text(
                                                        'Unfollow',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: Column(
                                                  children: const [
                                                    ListTile(
                                                      leading: Icon(Icons
                                                          .account_circle_outlined),
                                                      title: Text(
                                                        'About this account',
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 1,
                                                      thickness: 1,
                                                    ),
                                                    ListTile(
                                                      leading: Icon(Icons
                                                          .info_outline_rounded),
                                                      title: Text(
                                                        'Why you are seeing in post',
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 1,
                                                      thickness: 1,
                                                    ),
                                                    ListTile(
                                                      leading: Icon(Icons
                                                          .hide_source_outlined),
                                                      title: Text(
                                                        'Hide',
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 1,
                                                      thickness: 1,
                                                    ),
                                                    ListTile(
                                                      leading: Icon(
                                                        Icons
                                                            .report_problem_outlined,
                                                        color: Colors.red,
                                                      ),
                                                      title: Text(
                                                        'Report',
                                                        style: TextStyle(
                                                            color: Colors.red),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                });
                              },
                              icon: Icon(Icons.more_horiz_outlined),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CarouselSlider.builder(
                            itemCount: userpost[index].postimage.length,
                            itemBuilder: (context, newindex, realIndex) {
                              return Image.asset(
                                '${userpost[index].postimage[realIndex]}',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width,
                              );
                            },
                            options: CarouselOptions(
                              enableInfiniteScroll: false,
                              viewportFraction: 1,
                              height: MediaQuery.of(context).size.width,
                              onPageChanged: (index1, reason) {
                                setState(() {
                                  imageIndex = index1;
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black.withOpacity(0.7)),
                            child: Text(
                              '${imageIndex + 1}/${userpost[index].postimage.length}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.favorite_border_outlined),
                            SizedBox(
                              width: 3,
                            ),
                            IconButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Comment_Page(),
                                  )),
                              icon: Icon(Icons.comment_outlined),
                            ),
                            IconButton(
                              icon: Icon(Icons.send_outlined),
                              onPressed: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    constraints:
                                        const BoxConstraints(maxHeight: 500),
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Scaffold(
                                        body: Padding(
                                          padding: const EdgeInsets.all(32.0),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey[300],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  child: const TextField(
                                                    decoration: InputDecoration(
                                                        icon: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  8, 0, 0, 0),
                                                          child: Icon(
                                                              Icons.search),
                                                        ),
                                                        hintText: 'Search',
                                                        border: InputBorder
                                                            .none, //លុបបន្ទាត់ដេកដែលនៅក្រោមTextfield
                                                        suffixIcon: Icon(Icons
                                                            .child_friendly)), //Iconផែ្នកខាងក្រោយ
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    ListTile(
                                                      leading: Container(
                                                          height: 35,
                                                          width: 35,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.black,
                                                            shape:
                                                                BoxShape.circle,
                                                            image: DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image: AssetImage(
                                                                    'assets/images/IMG_4290.jpg')),
                                                          )),
                                                      title: Text(
                                                          'Add post to your story'),
                                                      trailing: IconButton(
                                                        icon: Icon(Icons
                                                            .send_outlined),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 300,
                                                      child: ListView.builder(
                                                        itemCount:
                                                            userpost.length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return ListTile(
                                                            leading: Container(
                                                                height: 35,
                                                                width: 35,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .black,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  image: DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: AssetImage(
                                                                          ' ${userpost[index].image!}')),
                                                                )),
                                                            title: Text(
                                                                '${userpost[index].username!}'),
                                                            subtitle: Text(
                                                                '${userpost[index].caption!}'),
                                                            trailing:
                                                                IconButton(
                                                              icon: Icon(Icons
                                                                  .rounded_corner),
                                                              onPressed: () {},
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        bottomNavigationBar: BottomAppBar(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 40,
                                              child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: const Text('Save')),
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            SmoothPageIndicator(
                              controller:
                                  PageController(initialPage: imageIndex),
                              count: userpost[index].postimage.length,
                              effect: const SlideEffect(
                                  spacing: 8.0,
                                  radius: 6.0,
                                  dotWidth: 9.0,
                                  dotHeight: 9.0,
                                  paintStyle: PaintingStyle.fill,
                                  strokeWidth: 1.5,
                                  dotColor: Colors.grey,
                                  activeDotColor: Colors.blue),
                            ),
                            const Spacer(),
                            const Icon(Icons.bookmark_border)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 5),
                        child: Text(
                          '${userpost[index].like} Likes',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                              text: '${userpost[index].username} ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                    text: '${userpost[index].caption}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal))
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/IMG_4290.jpg'),
                                  )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Add Comment ...',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        child: Text(
                          '${userpost[index].time} minutes ago',
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
