import 'package:flutter/material.dart';
import 'package:pathao_clone/tripDeatailsCancelled.dart';
import 'package:pathao_clone/tripDetails.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:page_transition/page_transition.dart';

class History extends StatefulWidget {
  const History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "History",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w700),
        ),
        elevation: 2.0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Show Cancelled Rides",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Switch(
                    value: isSwitched,
                    onChanged: toggleSwitch,
                    activeColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          isSwitched == true
              ? Column(
                  children: [
                    _historyItemsCancelled(
                        "04 JUL 2018, 8:07 PM",
                        "Ramoura Brige BRTC Bus Stop, D. I. T. Road, Rampura, Merul Badda, Badda, 1000",
                        "Mugda Cafe, 149/A, Mugdapara, Sabujbag, 1214",
                        "assets/image/player-6.png"),
                    _historyItemsCancelled(
                        "24 SEP 2018, 06:17 PM",
                        "Jumuna Future Park, Ka-244, Pragati Sarani Nadda, Kuril, 1229",
                        "Buddha Mondir Bus Shop, Kamalapur Road, Ahmedbag, Sabujbag, 1000",
                        "assets/image/player-5.png"),
                    _historyItemsCancelled(
                        "07 OCT 2018, 8:48 PM",
                        "A/7, Jahurul Islam Avenue, Merul Badda, Badda, 1212",
                        "Bank Colony Road, South Mugdapara, Sabujbag, 1203",
                        "assets/image/player-2.png"),
                    _historyItemsCancelled(
                        "18 FEB 2021, 10:53 PM",
                        "112/6/A, Mugda-Manda Khalpar Road, Uttor Madartek, Komlapur",
                        "Birdem Hospital, Shahbag Circle",
                        "assets/image/player-1.png"),
                    _historyItemsCancelled(
                        "03 MAR 2021, 08:48 AM",
                        "Kazi Liton Hptel and Restaurant, H 3/1, Mugdapara, Sabujbag",
                        "JUKI, 28/8/c, 2nd Floor, Bir Uttam A. K. Khandakar Road, Mohakhali, Gulshan",
                        "assets/image/player-3.png"),
                  ],
                )
              : Column(
                  children: [
                    _historyItems(
                        "03 MAR 2021, 08:48 AM",
                        "134",
                        "Kazi Liton Hptel and Restaurant, H 3/1, Mugdapara, Sabujbag",
                        "JUKI, 28/8/c, 2nd Floor, Bir Uttam A. K. Khandakar Road, Mohakhali, Gulshan",
                        "assets/image/player-3.png",
                        4.0),
                    _historyItems(
                        "18 FEB 2021, 10:53 PM",
                        "88",
                        "112/6/A, Mugda-Manda Khalpar Road, Uttor Madartek, Komlapur",
                        "Birdem Hospital, Shahbag Circle",
                        "assets/image/player-1.png",
                        1.0),
                    _historyItems(
                        "07 OCT 2018, 8:48 PM",
                        "46",
                        "A/7, Jahurul Islam Avenue, Merul Badda, Badda, 1212",
                        "Bank Colony Road, South Mugdapara, Sabujbag, 1203",
                        "assets/image/player-2.png",
                        5.0),
                    _historyItems(
                        "24 SEP 2018, 06:17 PM",
                        "160",
                        "Jumuna Future Park, Ka-244, Pragati Sarani Nadda, Kuril, 1229",
                        "Buddha Mondir Bus Shop, Kamalapur Road, Ahmedbag, Sabujbag, 1000",
                        "assets/image/player-5.png",
                        5.0),
                    _historyItems(
                        "04 JUL 2018, 8:07 PM",
                        "25",
                        "Ramoura Brige BRTC Bus Stop, D. I. T. Road, Rampura, Merul Badda, Badda, 1000",
                        "Mugda Cafe, 149/A, Mugdapara, Sabujbag, 1214",
                        "assets/image/player-6.png",
                        1.0),
                  ],
                ),
        ],
      ),
    );
  }

  Widget _historyItems(String pDate, String tk, String from, String to,
      String imageUrl, double rate) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/tripDetails");
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0),
            color: Colors.white,
            height: 110.0,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pDate,
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 100.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "৳" + tk,
                            style: TextStyle(
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 14.0,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 1.0),
                          height: 7.0,
                          width: 7.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.5),
                              color: Colors.black),
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
                          height: 6.0,
                          child: Container(
                            height: 10.0,
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0, top: 1.0),
                          height: 7.0,
                          width: 7.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.5),
                              color: Colors.red),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 80.0,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            from,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[600]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 100.0,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            to,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[600]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(imageUrl),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Divider(),
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0, bottom: 15.0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "REQUEST AGAIN",
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15.0),
                  child: SmoothStarRating(
                    starCount: 5,
                    size: 17.0,
                    color: Colors.amber[800],
                    borderColor: Colors.grey,
                    rating: rate,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          )
        ],
      ),
    );
  }

  Widget _historyItemsCancelled(
      String pDate, String from, String to, String imageUrl) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/tripDetailsCancelled");
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0),
            color: Colors.white,
            height: 110.0,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pDate,
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 100.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 14.0,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 1.0),
                          height: 7.0,
                          width: 7.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.5),
                              color: Colors.black),
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
                          height: 6.0,
                          child: Container(
                            height: 10.0,
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0, top: 1.0),
                          height: 7.0,
                          width: 7.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.5),
                              color: Colors.red),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 80.0,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            from,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[600]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 100.0,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            to,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[600]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(imageUrl),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Divider(),
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0, bottom: 12.0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "REQUEST AGAIN",
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 17.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      border: Border.all(
                        color: Colors.grey[700],
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        "CANCELLED",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          )
        ],
      ),
    );
  }
}
