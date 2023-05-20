import 'package:flutter/material.dart';
import 'package:instagram/messenger_page.dart';
import 'package:instagram/user_model.dart';

import 'detail_chat.dart';

class New_Messenger extends StatelessWidget {
  const New_Messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Messenger(),
                        )),
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                const Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    'New message',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const Divider(
              height: 5,
              thickness: 1,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 360, top: 5),
              child: Text(
                'To',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none, //លុបបន្ទាត់ដេកដែលនៅក្រោមTextfield
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 300),
              child: Text(
                'Suggested',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              //physics: NeverScrollableScrollPhysics(),
              itemCount: chat.length,
              itemBuilder: (context, index) => Container(
                child: Card(
                  //color: Colors.green,
                  elevation: 0,
                  child: ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailChat(),
                        )),
                    leading: CircleAvatar(
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('${chat[index].image}'))),
                      ),
                    ),
                    title: Text(chat[index].username!),
                    subtitle: const Text('Active now'),
                    trailing: const Icon(Icons.camera),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Create chat',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
