import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ReelPage extends StatelessWidget {
  ReelPage({Key? key}) : super(key: key);
  List<dynamic> photoReelPage = [
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Reels'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt_outlined),
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: photoReelPage.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  '${photoReelPage[index]}',
                ),
              ),
            ),
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 16, //ទទឹង
                        child: Container(
                          child: Column(
                            children: const [
                              ListTile(
                                dense: true,
                                minLeadingWidth: 0,
                                horizontalTitleGap: 12,
                                leading: CircleAvatar(
                                  radius: 14,
                                  backgroundImage:
                                      AssetImage('assets/images/husky1.jfif'),
                                ),
                                title: Text(
                                  'Husky_Boy . Follow',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14),
                                child: ExpandableText(
                                  'This example shows a message that was posted by a user. The username is always visible right before the text and tapping on it opens the user profile. The text is truncated after two lines and can be expanded by tapping on the link show more at the end or the text itself. After the text was expanded it cannot be collapsed again as no collapseText was provided. URLs, @mentions and #hashtags in the text are styled differently and can be tapped to open the browser or the user profile.',
                                  style: TextStyle(color: Colors.white),
                                  expandText: 'More',
                                  collapseText: 'Less',
                                  expandOnTextTap: true,
                                  collapseOnTextTap: true,
                                  maxLines: 1,
                                  linkColor: Colors.grey,
                                ),
                              ),
                              ListTile(
                                dense: true,
                                minLeadingWidth: 0,
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  Icons.graphic_eq_outlined,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Music - Original audio',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.favorite_outline,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '10K',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Icon(
                                  Icons.chat_bubble_outline,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text('100',
                                    style: TextStyle(color: Colors.white)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Icon(
                                  Icons.send_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text('100',
                                    style: TextStyle(color: Colors.white)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Icon(
                                  Icons.bookmark_border,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Icon(
                                  Icons.more_horiz,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2), //width =2 គឺកម្រាស់ប្រអប់
                                      borderRadius: BorderRadius.circular(8),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/husky1.jfif'))),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ]),
          );
        },
      ),
    );
  }
}
