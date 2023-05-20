// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/add_favorite.dart';
import 'package:instagram/user_model.dart';

class AddPeopleFav extends StatelessWidget {
  AddPeopleFav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 315,
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
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CupertinoButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Add_favorite(),
                            )),
                        child: const Text(
                          'Done',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      'Suggested',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                itemCount: favoritePeople2.length,
                itemBuilder: (context, index) => Container(
                  child: Card(
                    //color: Colors.green,
                    elevation: 0,
                    child: ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        '${favoritePeople2[index].image}'))),
                          ),
                        ),
                        title: Text(favoritePeople2[index].username!),
                        subtitle: const Text('Active now'),
                        trailing: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Add account',
                              style: TextStyle(color: Colors.black),
                            ))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
