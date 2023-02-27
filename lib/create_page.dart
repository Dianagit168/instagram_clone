// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  CreatePage({Key? key}) : super(key: key);
  List<dynamic> photoCreatePage = [
    'assets/images/husky1.jfif',
    'assets/images/husky4.jfif',
    'assets/images/IMG_4290.jpg',
    'assets/images/IMG_4404.jpg',
    'assets/images/Jack.jfif',
    'assets/images/jasmin.jpg',
    'assets/images/Riem.jpg',
    'assets/images/chan.jpg',
    'assets/images/husky1.jfif',
    'assets/images/husky4.jfif',
    'assets/images/IMG_4290.jpg',
    'assets/images/IMG_4404.jpg',
    'assets/images/Jack.jfif',
    'assets/images/jasmin.jpg',
    'assets/images/Riem.jpg',
    'assets/images/chan.jpg',
    'assets/images/husky1.jfif',
    'assets/images/husky4.jfif',
    'assets/images/IMG_4290.jpg',
    'assets/images/IMG_4404.jpg',
    'assets/images/Jack.jfif',
    'assets/images/jasmin.jpg',
    'assets/images/Riem.jpg',
    'assets/images/chan.jpg',
    'assets/images/husky1.jfif',
    'assets/images/husky4.jfif',
    'assets/images/IMG_4290.jpg',
    'assets/images/IMG_4404.jpg',
    'assets/images/Jack.jfif',
    'assets/images/jasmin.jpg',
    'assets/images/Riem.jpg',
    'assets/images/chan.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    Text(
                      'New post',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 0.4,
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.black,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Recents',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        IconButton(
                            // ignore: prefer_const_constructors
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () => debugPrint('hi')),
                      ],
                    ),
                    IconButton(
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () => debugPrint('hi')),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
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
                          image: AssetImage('${photoCreatePage[index]}'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  itemCount: photoCreatePage.length,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 150,
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'POST',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'STORY',
                                style: TextStyle(color: Colors.grey[300]),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('REEL',
                                  style: TextStyle(color: Colors.grey[300])),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('LIVE',
                                  style: TextStyle(color: Colors.grey[300])),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
