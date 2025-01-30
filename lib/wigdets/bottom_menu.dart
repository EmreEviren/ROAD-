import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: (){
              context.go("/home");
            },
            icon: const Icon(
              CupertinoIcons.home,
              size: 30,
              color: Color.fromARGB(255, 29,53,87),

            ),
          ),
          IconButton(
            onPressed: (){
              context.go("/ticket");
            },
            icon: const Icon(
              CupertinoIcons.ticket,
              size: 30,
              color: Color.fromARGB(255, 29,53,87),

            ),
          ),
          IconButton(
            onPressed: (){
              context.go("/car");
            },
            icon: const Icon(
              CupertinoIcons.car,
              size: 30,
              color: Color.fromARGB(255, 29,53,87),
            ),
          ),
          IconButton(
            onPressed: (){
              context.go("/profile");
            },
            icon: const Icon(
              CupertinoIcons.person,
              size: 30,
              color: Color.fromARGB(255, 29,53,87),
            ),
          ),
        ],
      ),);
  }
}