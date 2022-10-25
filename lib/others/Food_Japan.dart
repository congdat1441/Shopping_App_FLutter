import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class JapanFood extends StatefulWidget {
  const JapanFood({super.key});

  @override
  State<JapanFood> createState() => _JapanFoodState();
}

class _JapanFoodState extends State<JapanFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle(context),
              SizedBox(
                height: 40,
              ),
              buildSpecial(context),
              SizedBox(
                height: 20,
              ),
              buildDes(context),
              SizedBox(
                height: 20,
              ),
              buildFood(context),
              SizedBox(
                height: 20,
              ),
              buildPlaces(context),
              SizedBox(
                height: 40,
              ),
              buildPlaceLocal(context)
            ],
          ),
        ),
      ),
    );
  }

  buildTitle(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  buildSpecial(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Today's Special",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Container(
          // margin: EdgeInsets.all(10),
          padding: new EdgeInsets.only(
              left: 25.0, right: 25.0, top: 15.0, bottom: 15.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 56, 228, 62),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 100, 255, 105).withOpacity(1),
                spreadRadius: -15,
                blurRadius: 0,
                offset: Offset(0, 26), // changes position of shadow
              ),
            ],
          ),

          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.white,
              ),
              Text(
                "CART",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        )
      ],
    );
  }

  buildDes(BuildContext context) {
    return Text(
      "Find out what cooking today!",
      style: TextStyle(color: Colors.grey, fontSize: 18),
    );
  }

  buildFood(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      // width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 340,
            width: 225,
            child: Container(
              padding: const EdgeInsets.only(left: 18.0, right: 10.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 111, 190, 255),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 151, 208, 255).withOpacity(1),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/pic1.jpg',
                        scale: 1.5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Yoshimasa Sushi ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '250 Ratings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Lorem isapum kjwu huhwg kajwhiu loremn usapen úapun',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: 170,
                  width: 135,
                  child: Container(
                    padding: const EdgeInsets.only(left: 18.0, right: 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 83, 228, 88),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 170, 255, 173).withOpacity(1),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/images/pic2.jpg',
                            scale: 3.6,
                          ),
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Yoshimasa Sushi ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 150,
                  width: 135,
                  child: Container(
                    padding: const EdgeInsets.only(left: 18.0, right: 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 90, 90, 90),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 159, 159, 159).withOpacity(1),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 0,
                            ),
                            Image.asset(
                              'assets/images/pic3.jpg',
                              scale: 2.8,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Prato Sushi ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }

  buildPlaces(BuildContext context) {
    return Row(
      children: [
        Text(
          "Places",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 40,
        ),
        Container(
          padding: new EdgeInsets.only(
              left: 25.0, right: 25.0, top: 15.0, bottom: 15.0),
          width: 250,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey, width: 1.0),
            ),
          ),
        ),
      ],
    );
  }

  buildPlaceLocal(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/pic6.jpg",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 0,
              ),
              SizedBox(
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sushi Den",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                        ],
                      ),
                      Text(
                        'Lorem isapum kjwu sádasdasdasdasd asdasd ư ư ưádasd',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        softWrap: false,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // margin: EdgeInsets.all(10),
                padding: new EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 56, 228, 62),
                  borderRadius: BorderRadius.circular(100),
                ),

                child: Row(
                  children: [
                    Text(
                      "Order Now",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/pic7.jpg",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hatsuhana Sushi",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                        ],
                      ),
                      Text(
                        'Lorem isapum kjwu  asdasd qweqw fczxcsdsdasd ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        softWrap: false,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // margin: EdgeInsets.all(10),
                padding: new EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 56, 228, 62),
                  borderRadius: BorderRadius.circular(100),
                ),

                child: Row(
                  children: [
                    Text(
                      "Order Now",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
