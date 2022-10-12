import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  List<Map<String, dynamic>> list = [
    {
      'categories': 'WEIGHT',
      'detail': '250',
      'map': 'G',
    },
    {
      'categories': 'CALORIES ',
      'detail': '250',
      'map': 'CAL',
    },
    {
      'categories': 'VITAMINS',
      'detail': 'A,B6 ',
      'map': 'VIT',
    },
  ];
  int select = 0;

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.tune,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Vegetable",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sandwich",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$24.00",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (counter > 1) {
                                        setState(
                                          () {
                                            counter--;
                                          },
                                        );
                                      }
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '$counter',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(
                                        () {
                                          counter++;
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              3,
                              (index) => GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      select = index;
                                    },
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  height: 75,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: select == index
                                          ? Colors.teal
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(26),
                                      border: Border.all(
                                          color: Colors.grey, width: 1)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 15,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          list[index]['categories'],
                                          style: TextStyle(
                                            color: select == index
                                                ? Colors.white
                                                : Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              list[index]['detail'],
                                              style: TextStyle(
                                                color: select == index
                                                    ? Colors.white
                                                    : Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              list[index]['map'],
                                              style: TextStyle(
                                                color: select == index
                                                    ? Colors.white
                                                    : Colors.grey,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: MaterialButton(
                            onPressed: () {},
                            height: 60,
                            minWidth: 300,
                            color: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Text("\$72.00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Spacer(),
                                  InkResponse(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/images/fast-forward.png",
                                      height: 30,
                                      width: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -100,
                    child: CircleAvatar(
                      radius: 130,
                      backgroundImage:
                          AssetImage("assets/images/vegetable_sandwish.png"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
