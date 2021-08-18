import 'package:flutter/material.dart';
import 'dart:math';

class TripDeatailsCancelled extends StatefulWidget {
  const TripDeatailsCancelled({Key key}) : super(key: key);

  @override
  _TripDeatailsCancelledState createState() => _TripDeatailsCancelledState();
}

class _TripDeatailsCancelledState extends State<TripDeatailsCancelled> {
  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = new Random();
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
            height: 45.0,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.report_gmailerrorred_rounded,
                  color: Colors.red,
                  size: 20.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "REPORT ISSUE",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      color: Colors.red),
                ),
              ],
            )),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Trip Details",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w700),
        ),
        elevation: 2.0,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                color: Colors.white,
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Trip ID",
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.grey[700]),
                        ),
                        SizedBox(
                          height: 07.0,
                        ),
                        Text(
                          "#" + getRandomString(6).toUpperCase(),
                          style: TextStyle(
                              fontFamily: "Livvic",
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.file_copy_outlined),
                      color: Colors.grey[700],
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              _tripInfo(),
            ],
          )
        ],
      ),
    );
  }

  Widget _tripInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 9.0,
        ),
        Container(
          height: 200.0,
          color: Colors.white,
          padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trip Info",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: "Quicksand",
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    padding: EdgeInsets.only(
                        left: 6.0, right: 6.0, top: 2.0, bottom: 2.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.directions_bike_outlined,
                          size: 13.0,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "BIKE",
                          style: TextStyle(
                            fontFamily: "Quicksand",
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22.0,
              ),
              Text(
                "03 MAR 2021, 08:48 AM",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 22.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 1.0),
                          height: 6.0,
                          width: 6.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 4.0,
                          child: Container(
                            height: 6.0,
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          height: 4.0,
                          child: Container(
                            height: 4.0,
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          height: 7.0,
                          child: Container(
                            height: 6.0,
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        SizedBox(
                          height: 5.0,
                          child: Container(
                            height: 5.0,
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          height: 2.0,
                          child: Container(
                            height: 2.0,
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0, top: 1.0),
                          height: 6.0,
                          width: 6.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 80.0,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Kazi Liton Hptel and Restaurant, H 3/1, Mugdapara, Sabujbag",
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[600]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            softWrap: false,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 100.0,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "JUKI, 28/8/c, 2nd Floor, Bir Uttam A. K. Khandakar Road, Mohakhali, Gulshan",
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[600]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Divider(),
        ),
        Container(
          padding:
              EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 10.0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 36.0,
                    width: 36.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage("assets/image/player-1.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  Container(
                    child: Text(
                      "SREE KRISHNA PAD ROY",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: Colors.grey[400],
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      "CANCELLED",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w600,
                          fontSize: 11.0),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
          color: Colors.white,
          child: Center(
            child: Text(
              "This ride is cancelled by you",
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600]),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "REQUEST AGAIN",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                    size: 15.0,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
