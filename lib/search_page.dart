// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram/user_model.dart';

class SearchPage extends StatelessWidget {
  SearchPage({
    Key? key,
  }) : super(key: key);

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
                      image: AssetImage('${photo[index]}'), fit: BoxFit.cover),
                ),
              ),
              itemCount: photo.length,
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