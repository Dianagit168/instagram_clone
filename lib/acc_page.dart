// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram/user_model.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'chen_diana15',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              constraints: const BoxConstraints(
                                  maxHeight: 470, maxWidth: double.infinity),
                              context: context,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Keep up with the smaller group of friends',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Create another account to stay in touch with a group of your friends',
                                        textAlign: TextAlign.center,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          child: Text('Try a new account'),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                      )
                                    ],
                                  ),
                                );
                              });
                          ;
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add_box_outlined),
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              constraints: const BoxConstraints(
                                maxHeight: 470,
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Text(
                                          'Create',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.movie_filter_outlined,
                                        ),
                                        title: Text(
                                          'Reel',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.menu_book_outlined),
                                        title: Text(
                                          'Post',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons
                                            .collections_bookmark_outlined),
                                        title: Text(
                                          'Story',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.menu),
                                        title: Text(
                                          'Story highlight ',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading:
                                            Icon(Icons.star_border_outlined),
                                        title: Text(
                                          'Live',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.add_box_outlined),
                                        title: Text(
                                          'Guide',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(),
                                    ],
                                  ),
                                );
                              });
                          ;
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              constraints: const BoxConstraints(
                                maxHeight: 750,
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      ListTile(
                                        leading: Icon(Icons.settings),
                                        title: Text(
                                          'Setting',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.av_timer_outlined),
                                        title: Text(
                                          'Scheduled content',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.more_time),
                                        title: Text(
                                          'Your activity',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.timer_sharp,
                                        ),
                                        title: Text(
                                          'Archive',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.timelapse_outlined),
                                        title: Text(
                                          'Insights',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.qr_code),
                                        title: Text(
                                          'QR code',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.bookmarks_outlined,
                                        ),
                                        title: Text(
                                          'Save',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.payment_outlined),
                                        title: Text(
                                          'Orders and payments',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons
                                            .collections_bookmark_outlined),
                                        title: Text(
                                          'Digital collectibles',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.menu),
                                        title: Text(
                                          'Close friends',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading:
                                            Icon(Icons.star_border_outlined),
                                        title: Text(
                                          'Favorites',
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        indent: 70,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.add_box_outlined),
                                        title: Text(
                                          'Discover people',
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                          ;
                        },
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/IMG_4290.jpg'))),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    border: Border.all(color: Colors.white)),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                          Text(
                            (photo.length).toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          const Text('Posts'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: const [
                          Text(
                            '10',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text('Followers'),
                        ],
                      ),
                    ),
                    Column(
                      children: const [
                        Text(
                          '20',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text('Followings'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Diana',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Musician/band',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.link_sharp),
                        Text(
                          'www.facebook.com/dy.hero.5',
                          style: TextStyle(fontSize: 13, color: Colors.blue),
                        ),
                      ],
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
                            color: Colors.grey[300]),
                        child: const Center(
                          child: Text(
                            'Edit profile',
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
                            'Share profile',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.topCenter,
                                    colors: [
                                      Color.fromARGB(255, 224, 219, 223),
                                      Color.fromARGB(255, 224, 219, 223),
                                    ]),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(color: Colors.white)
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/chan.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('No caption'),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.topCenter,
                                    colors: [
                                      Color.fromARGB(255, 224, 219, 223),
                                      Color.fromARGB(255, 224, 219, 223),
                                    ]),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(color: Colors.white)
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/jasmin.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('No caption'),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.topCenter,
                                    colors: [
                                      Color.fromARGB(255, 224, 219, 223),
                                      Color.fromARGB(255, 224, 219, 223),
                                    ]),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(color: Colors.white)
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Jack.jfif'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('No caption'),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.topCenter,
                                    colors: [
                                      Color.fromARGB(255, 224, 219, 223),
                                      Color.fromARGB(255, 224, 219, 223),
                                    ]),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(color: Colors.white)
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('New'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 36,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            //borderRadius: BorderRadius.circular(8),
                          ),
                          child:
                              const Center(child: Icon(Icons.category_sharp)),
                        ),
                        const Divider(
                          height: 1,
                          thickness: 1.5,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 36,
                      decoration: const BoxDecoration(
                        //color: Colors.red,
                        shape: BoxShape.rectangle,
                        // borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Icon(Icons.account_box_outlined),
                      ),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (context, index) => Container(
                  // height: 130,
                  // width: 130,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                        image: AssetImage('${photo[index]}'),
                        fit: BoxFit.cover),
                  ),
                ),
                itemCount: photo.length,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
