import 'package:flutter/material.dart';
import 'package:instagram/favorite.dart';
import 'package:instagram/homepage.dart';
import 'package:instagram/messenger_page.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                'Instagram',
                style: TextStyle(
                    fontFamily: 'Satisfy',
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              PopupMenuButton(
                position: PopupMenuPosition.under,
                icon: const Icon(Icons.keyboard_arrow_down_rounded),
                itemBuilder: (context) => [
                  PopupMenuItem(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          )),
                      title: const Text(
                        'Following',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: const Icon(Icons.account_balance_outlined),
                    ),
                  )),
                  PopupMenuItem(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Favorite(),
                            )),
                        title: const Text(
                          'Favorites',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.star_border_outlined)),
                  ))
                ],
              )
              // IconButton(
              //   icon: const Icon(Icons.keyboard_arrow_down_rounded),
              //   onPressed: () {

              //   },
              // ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  icon: const Icon(Icons.chat),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Messenger(),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
