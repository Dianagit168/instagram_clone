import 'package:flutter/material.dart';

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
              IconButton(
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  onPressed: () => print('go')),
            ],
          ),
          Row(
            children: [
              IconButton(
                  icon: const Icon(Icons.chat), onPressed: () => print('chat')),
            ],
          ),
        ],
      ),
    );
  }
}
