import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:http/http.dart' as http;
import 'package:nannyvanny/dataholders.dart';
import 'package:nannyvanny/drawer.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: ()=>ZoomDrawer.of(context)!.toggle(),
                    child: Icon(
                      Icons.dehaze,
                      color:Color(0xFFe36da7)
                    ),
                  ),
                  SizedBox(
                    width:20
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Stack(children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage:
                          AssetImage('assets/images/profilepic.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                              "krystle Mathew",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xFFe36da7),
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Card(
                  child: Container(
                    color: Color(0xFFf5b5cf),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Text(
                                      "Nanny And BabySitting Services",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff282e70)),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff262f72
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(20, 20))),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Book Now",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/motherbaby.png"),
                                  fit: BoxFit.cover)),
                          height: 150,
                          width: MediaQuery.of(context).size.width / 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      "Your Current Booking",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:Color(0xff282e70)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Card(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  currentBooking["package_label"]!=null? currentBooking["package_label"]:"",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffe295be),
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffe36da7),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(20, 20))),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Start",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Text("From"),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Text("To"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    color: Color(0xffcb7ea3),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(currentBooking["from_date"],style: TextStyle(color: Color(0xff5d5d5d),),),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    color: Color(0xffcb7ea3),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(currentBooking["to_date"],style: TextStyle(color: Color(0xff5d5d5d),)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xffcb7ea3),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(currentBooking["from_time"],style: TextStyle(color: Color(0xff5d5d5d),)),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Color(0xffcb7ea3),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(currentBooking["to_time"],style: TextStyle(color: Color(0xff5d5d5d),)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff262f72),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(20, 20))),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.star_border,color: Colors.white,size: 15,),
                                      Text(
                                        "Rate Us",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff262f72),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(20, 20))),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.location_on_outlined,color: Colors.white,size: 15,),
                                      Text(
                                        "Geolocation",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff262f72),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(20, 20))),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.mic_outlined,color: Colors.white,size: 15,),
                                      Text(
                                        "Survillence",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      "Packages",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff262f72),),
                    ),
                  ),
                ],
              ),
              ListView.builder(physics:NeverScrollableScrollPhysics(),itemCount:packages.length,shrinkWrap: true,itemBuilder: (BuildContext,index){
                var clr;
                var calenderIcon;
                var bookNowClr;
                var descriptionClr;
               if(packages[index]["id"]==1){
                 clr=Color(0xFFf5b5cf);
                 calenderIcon=Container( child:Image(image: AssetImage("assets/images/one.png")),width: 30,height: 30,);
                 bookNowClr=Color(0xFFe36da7);
                 descriptionClr=Color(0xFF664f59);
               }
                if(packages[index]["id"]==2){
                  clr=Color(0xffb5d4f5);
                  calenderIcon=Container( child:Image(image: AssetImage("assets/images/three.png")),width: 30,height: 30,);
                  bookNowClr=Color(0xFF0098d1);
                  descriptionClr=Color(0xFF664f59);
                }
                if(packages[index]["id"]==3){
                  clr=Color(0xFFf5b5cf);
                  calenderIcon=Container( child:Image(image: AssetImage("assets/images/five.png")),width: 30,height: 30,);
                  bookNowClr=Color(0xFFe36da7);
                  descriptionClr=Color(0xFF664f59);
                }
                if(packages[index]["id"]==4){
                  clr=Color(0xffb5d4f5);
                  calenderIcon=Container( child:Image(image: AssetImage("assets/images/seven.png")),width: 30,height: 30,);
                  bookNowClr=Color(0xFF0098d1);
                  descriptionClr=Colors.white;
                }
                return Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child:Card(
                        color: clr,
                        child: Column(
                          children:[
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    calenderIcon,
                                  ],
                                ),

                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(

                                      decoration: BoxDecoration(
                                          color: bookNowClr,
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(20, 20))),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Book Now",
                                            style: TextStyle(
                                                fontSize: 14, color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(packages[index]["package_name"],style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ,color: Color(0xff262f72) ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("\u{20B9}${packages[index]["price"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ,color:Color(0xff262f72))),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width:MediaQuery.of(context).size.width/1.3,
                                  child: Text(
                                    packages[index]["description"],
                                    maxLines: 2,
                                    style: TextStyle(color: descriptionClr,fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],

                        ),
                      ),

                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                );



              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // getData().then((sucess){
    //
    // });
  }

  // getData() async {
  //   var uri = Uri.parse("http://cgprojects.in/flutter/");
  //   print(uri);
  //   var data = await http.get(uri);
  //   var response = jsonDecode(data.body);
  //   var cb=response["current_bookings"];
  //   var p=response["packages"];
  //   setState(() {
  //     currentBooking = cb;
  //     packages = p;
  //   });
  // }
}
