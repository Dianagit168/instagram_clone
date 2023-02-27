// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram/user_model.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatelessWidget {
  SearchPage({
    Key? key,
  }) : super(key: key);
  List<dynamic> photosearchPage = [
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
      // backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
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
                    border: InputBorder.none, //លុបបន្ទាត់ដេកដែលនៅក្រោមTextfield
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                      image: AssetImage('${photosearchPage[index]}'),
                      fit: BoxFit.cover),
                ),
              ),
              itemCount: photosearchPage.length,
            ),
          ]),
        ),
      ),
    );
  }
}


// ListView.builder(
//                 itemCount: photosearchPage.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     height: 130,
//                     width: 130,
//                     decoration: const BoxDecoration(
//                       color: Colors.green,
//                     ),
//                     child: Image(
//                       image: AssetImage('$photosearchPage[index]'),
//                     ),
//                   );
//                 })