import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
    );
  }
}
