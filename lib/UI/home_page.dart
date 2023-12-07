import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/IMG_7147.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 330,
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xfffae2bd)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/images/Vector.svg",
                      ),
                      const Text(
                        "32",
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const Text("Sunny",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                  const Text("California, Los Angeles",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      )),
                  const Text("21 Oct 2019",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      )),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Feels like 30",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          )),
                      VerticalDivider(
                        color: Colors.black,
                      ),
                      Text("Sunset 18:20",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: const Color(0x80fae2bd),
                  border: const Border()),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("Now",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("2 AM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("3 AM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("4 AM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("5 AM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("6 AM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("7 AM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("8 AM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("9 AM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("10 AM",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              )),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                width: 16,
                                height: 12,
                              ),
                              Text("25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Random Text",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      "Improve him believe opinion offered met and end cheered forbade. Friendly as stronger speedily by recurred. Son interest wandered sir addition end say. Manners beloved affixed picture men ask.",
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
