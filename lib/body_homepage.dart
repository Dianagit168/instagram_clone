import 'package:flutter/material.dart';
import 'package:instagram/user_acc.dart';
import 'package:instagram/user_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'appbar.dart';
import 'fri_story.dart';

class Body_HomePage extends StatelessWidget {
  Body_HomePage({
    Key? key,
  }) : super(key: key);
  List<dynamic> story = [
    UserModel(image: 'assets/images/jasmin.jpg', username: 'Jasmin'),
    UserModel(image: 'assets/images/chan.jpg', username: 'ch.an8190'),
    UserModel(image: 'assets/images/Jack.jfif', username: 'Jack'),
    UserModel(image: 'assets/images/husky4.jfif', username: 'Husky_Boyz'),
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
                      children: story
                          .map(
                            (e) => Fri_Story(user: e),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 3,
            ),
            Column(
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
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/husky1.jfif'),
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 6,
                            ),
                            child: Text(
                              'Alex_Riemz',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Takeo,Cambodia',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.more_horiz),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image(
                      image: const AssetImage('assets/images/IMG_4404.jpg'),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
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
                      child: const Text(
                        '1/3',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.favorite_border_outlined),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.comment_outlined),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.send_outlined),
                      const SizedBox(
                        width: 90,
                      ),
                      SmoothPageIndicator(
                        controller: PageController(),
                        count: 3,
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
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 5),
                  child: Text(
                    '54.674.147 Likes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: RichText(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    text: const TextSpan(
                        text: 'Alex_Riemz',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: ' Give me the true love. ',
                              style: TextStyle(fontWeight: FontWeight.normal))
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
                              image: AssetImage('assets/images/Riem.jpg'),
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
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    '30 minutes ago',
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
