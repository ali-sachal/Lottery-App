import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Mapp());
}

class Mapp extends StatefulWidget {
  const Mapp({super.key});

  @override
  State<Mapp> createState() => _MappState();
}

class _MappState extends State<Mapp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              x == 22 ? const Color(0xff89A162) : const Color(0xffFD5C32),
          title: const Center(
              child: Text(
            "Lottery Token",
            style: TextStyle(
              fontFamily: "Rubik Italic",
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        backgroundColor: const Color(0xffD4D5D8),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              "The Lottery Number is 22",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Rubik Regular",
                fontWeight: FontWeight.w900,
              ),
            )),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: x == 22
                      ? const Color(0xff89A162).withOpacity(0.5)
                      : const Color(0xffFD5C32).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: x == 22
                    ? // ?
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all_outlined,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Congratulation You have Won! 🎉😊🎉 \n Your Lottery Number is $x",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: "Rubik Italic",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            color: Colors.deepOrange,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Better Luck Next Time your \n Lottery Number is $x \n'Try Again'",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: "Rubik Italic",
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(30);
            setState(() {});
          },
          backgroundColor:
              x == 22 ? const Color(0xff89A162) : const Color(0xffFD5C32),
          child: const Icon(
            Icons.refresh,
            color: Color(0xffF8F0EA),
          ),
        ),
      ),
    );
  }
}
