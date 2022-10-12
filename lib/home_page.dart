import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> foodlist = [
    {
      "image": "assets/images/healthy_food-removebg-preview.png",
      "name": "Healthy Food",
      "price": "\$100.00"
    },
    {
      "image": "assets/images/pasta-removebg-preview.png",
      "name": "Pasta",
      "price": "\$80.00"
    },
    {
      "image": "assets/images/sandwich-removebg-preview.png",
      "name": "Sandwich",
      "price": "\$24.00"
    },
    {
      "image": "assets/images/upma-removebg-preview.png",
      "name": "Upma",
      "price": "\$30.00"
    },
  ];
  List<Map<String, dynamic>> foodlist1 = [
    {
      "image": "assets/images/beef.png",
      "name": "Beef Bowl",
      "price": "\$25.00"
    },
    {
      "image": "assets/images/egg.png",
      "name": "Beef and Egg Bowl",
      "price": "\$27.00"
    },
    {
      "image": "assets/images/fruit.png",
      "name": "Fruit Bowl",
      "price": "\$20.00"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                      color: Colors.deepOrange,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.tune),
                      color: Colors.deepOrange,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1,
                          offset: Offset(1, 1))
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: TextField(
                      style: TextStyle(color: Colors.deepOrange),
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        suffixIcon:
                            Icon(Icons.search, color: Colors.deepOrange),
                        fillColor: Colors.grey,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your Favourites",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    4,
                    (index) => Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Container(
                            margin: EdgeInsets.only(top: 50),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 70,
                                ),
                                Center(
                                  child: Text(
                                    foodlist[index]['name'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star, color: Colors.white),
                                    Text("4.3 (405)",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      foodlist[index]['price'],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {},
                                          child: Text("Add",
                                              style: TextStyle(
                                                  color: Colors.deepOrange,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          left: 20,
                          child: CircleAvatar(
                            radius: 56,
                            backgroundImage: AssetImage(
                              foodlist[index]["image"],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Row(
                        children: [
                          Text("DINNER", style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 40,
                          ),
                          Text("LUNCH", style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 40,
                          ),
                          Text("BREAKFAST",
                              style: TextStyle(color: Colors.deepOrange)),
                        ],
                      ),
                    ),
                    Column(
                      children: List.generate(
                        3,
                        (index) => Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 16),
                              height: 80,
                              width: 250,
                              color: Colors.teal,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      foodlist1[index]["name"],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          foodlist1[index]["price"],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 30,
                                        width: 55,
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(26),
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "Add",
                                              style: TextStyle(
                                                  color: Colors.deepOrange,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              bottom: 0,
                              left: -40,
                              child: CircleAvatar(
                                //backgroundColor: Colors.white,
                                radius: 45,
                                backgroundImage: AssetImage(
                                  foodlist1[index]["image"],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
