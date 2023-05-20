import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/add_favorite.dart';
import 'package:instagram/homepage.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ))),
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    'Favorites',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Add_favorite(),
                        )),
                  ),
                ],
              ),
              const Divider(
                height: 5,
              ),
              const SizedBox(
                height: 240,
              ),
              const Icon(
                Icons.star_border_outlined,
                size: 60,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Choose the accounts you can not miss out on',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Add accounts to your favorites to see their posts here, starting with the mostrecent posts.',
                  textAlign: TextAlign.center,
                ),
              ),
              CupertinoButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Add_favorite(),
                      )),
                  child: const Text(
                    'Add favorites',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
