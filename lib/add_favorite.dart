import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/add_people_fav.dart';
import 'package:instagram/favorite.dart';
import 'package:instagram/user_model.dart';

class Add_favorite extends StatefulWidget {
  Add_favorite({Key? key}) : super(key: key);

  @override
  State<Add_favorite> createState() => _Add_favoriteState();
}

class _Add_favoriteState extends State<Add_favorite> {
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
                          builder: (context) => const Favorite(),
                        ))),
                    icon: const Icon(Icons.close),
                  ),
                  const Text(
                    'Favorites',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddPeopleFav(),
                        )),
                  )
                ],
              ),
              const Divider(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'New posts from your favorites will appear higher in feed. Only you can see who you add or remove.',
                        textAlign: TextAlign.center,
                      ),
                      CupertinoButton(
                          onPressed: () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                constraints:
                                    const BoxConstraints(maxHeight: 350),
                                context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'How favorites works',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                          textAlign: TextAlign.center,
                                        ),
                                        Divider(
                                          height: 5,
                                        ),
                                        ListTile(
                                          leading: Icon(
                                              Icons.mobile_friendly_rounded),
                                          title: Text(
                                            'Add accounts to your favorites list',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                              'You can search for accounts or view suggestions based your activity.'),
                                        ),
                                        ListTile(
                                          leading:
                                              Icon(Icons.star_border_outlined),
                                          title: Text(
                                            'See favorites higher in your feed',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                              'New posts from your favorites will appear higher in feed so you don not miss out.'),
                                        ),
                                        ListTile(
                                          leading:
                                              Icon(Icons.privacy_tip_outlined),
                                          title: Text(
                                            'Only you can see who is on your list',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          subtitle: Text(
                                              'Your favorites will be not notified when you add or remove them.'),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: const Text(
                            'How it works',
                            style: TextStyle(fontSize: 13),
                          ))
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
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
                      border:
                          InputBorder.none, //លុបបន្ទាត់ដេកដែលនៅក្រោមTextfield
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text('Favorites'),
                        const Spacer(),
                        CupertinoButton(
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text(
                                      ' Remove favorite?',
                                      textAlign: TextAlign.center,
                                    ),
                                    actions: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Divider(
                                            height: 5,
                                          ),
                                          CupertinoButton(
                                            onPressed: () {
                                              favoritePeople.clear();
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'Remove all',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 213, 23, 23)),
                                            ),
                                          ),
                                          const Divider(
                                            height: 5,
                                          ),
                                          CupertinoButton(
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 34, 32, 32)),
                                              textAlign: TextAlign.center,
                                            ),
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          )
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );

                              setState(() {});
                            },
                            child: const Text(
                              'Remove all',
                              style: TextStyle(fontSize: 13),
                            ))
                      ],
                    ),
                  ),
                  const Text(
                    'To get started, you can confirm these suggested favorites based on your activity on instagram.',
                    textAlign: TextAlign.start,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: favoritePeople.length,
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
                                            '${favoritePeople[index].image}'))),
                              ),
                            ),
                            title: Text(favoritePeople[index].username!),
                            subtitle: const Text('Active now'),
                            trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.grey[200]),
                                onPressed: () {
                                  setState(() {
                                    favoritePeople.removeAt(index);
                                  });
                                },
                                child: const Text(
                                  'Remove',
                                  style: TextStyle(color: Colors.black),
                                ))),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {}, child: const Text('Confirm favorites')),
        ),
      ),
    );
  }
}
