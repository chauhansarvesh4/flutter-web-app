import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIND READER',
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.deepOrange,
          brightness: Brightness.light),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _iconDatas = [
    Icons.gamepad,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.zoom_in,
    Icons.access_time,
    Icons.accessibility,
    Icons.accessibility_new,
    Icons.accessible,
    Icons.accessible_forward,
    Icons.account_balance,
    Icons.account_balance_wallet,
    Icons.account_box,
    Icons.account_circle,
    Icons.adb,
    Icons.add_a_photo,
    Icons.add_alarm,
    Icons.add_alert,
    Icons.add_box,
    Icons.add_call,
    Icons.add_circle,
    Icons.add_circle_outline,
    Icons.add_comment,
    Icons.add_location,
    Icons.add_photo_alternate,
    Icons.add_shopping_cart,
    Icons.add_to_home_screen,
    Icons.add_to_photos,
    Icons.add_to_queue,
    Icons.adjust,
    Icons.airline_seat_flat,
    Icons.airline_seat_flat_angled,
    Icons.airline_seat_individual_suite,
    Icons.airline_seat_legroom_extra,
    Icons.airline_seat_legroom_normal,
    Icons.airplanemode_active,
    Icons.airplay,
    Icons.airport_shuttle,
    Icons.alarm,
    Icons.alarm_add,
    Icons.album,
    Icons.all_inclusive,
    Icons.android,
    Icons.apps,
    Icons.archive,
    Icons.arrow_back,
    Icons.arrow_upward,
    Icons.art_track,
    Icons.aspect_ratio,
    Icons.assessment,
    Icons.assistant_photo,
    Icons.atm,
    Icons.attach_file,
    Icons.audiotrack,
    Icons.autorenew,
    Icons.av_timer,
    Icons.backspace,
    Icons.backup,
    Icons.battery_alert,
    Icons.beach_access,
    Icons.block,
    Icons.bluetooth,
    Icons.blur_circular,
    Icons.book,
    Icons.border_all,
    Icons.border_color,
    Icons.branding_watermark,
    Icons.brightness_1,
    Icons.brightness_auto,
    Icons.broken_image,
    Icons.brush,
    Icons.bubble_chart,
    Icons.bug_report,
    Icons.build,
    Icons.burst_mode,
    Icons.business,
    Icons.cached,
    Icons.cake,
    Icons.calendar_today,
    Icons.call,
    Icons.call_merge,
    Icons.camera,
    Icons.camera_roll,
    Icons.cancel,
    Icons.card_giftcard,
    Icons.card_membership,
    Icons.card_travel,
    Icons.casino,
    Icons.cast,
    Icons.cast_connected,
    Icons.category,
    Icons.center_focus_strong,
    Icons.change_history,
    Icons.chat,
    Icons.chat_bubble,
    Icons.check,
    Icons.check_box,
    Icons.check_circle,
    Icons.chevron_left,
    Icons.child_care,
    Icons.chrome_reader_mode,
    Icons.close,
    Icons.cloud,
  ];

  double _height;
  double _width;
  bool _isMobile;
  bool _isSmallFont;
  bool _isNext;
  final _formKey = GlobalKey<FormState>();

  int _val;

  @override
  void initState() {
    _isMobile = false;
    _isSmallFont = false;
    _isNext = false;
    _iconDatas.shuffle();
    var ran = Random();
    _val = ran.nextInt(100);
    print("random val $_val");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    print("height = $_height");
    print("width = $_width");

    if (_width < 860 && _height < 700) {
      _isMobile = true;
    }
    if (_width < 860 && _height > 700) {
      _isMobile = true;
    }
    if (_width > 860 && _height > 700) {
      _isMobile = false;
    }
    if (_width > 860 && _height < 700) {
      _isMobile = true;
    }

    if (_width > 1500 && _height > 880) {
      _isSmallFont = false;
    }

    if (_width < 1500 && _height < 880) {
      _isSmallFont = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MIND READER",
        ),
        actions: <Widget>[

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content:Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Icon(getIconDataByIndex(9),size: 64,color: Colors.green,),
                                  SizedBox(height: 20,),
                                  Text("YOUR ANSWER",style: TextStyle(fontSize: 40,color: Colors.green,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 20,),
                                  RaisedButton(onPressed: (){
                                    Navigator.pop(context);
                                    setState(() {
                                      _iconDatas.shuffle();
                                    });
                                  },
                                  color: Colors.green,
                                  child: Text("OK",style: TextStyle(color: Colors.white,fontSize: 30),),),
                                ],
                              ),
                            ),
                        );
                      },
                      barrierDismissible: false,
                      );
                },
                child: Text("CHECK YOUR ANSWER",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: (_isMobile)
          ? FloatingActionButton.extended(
              label: Text(
                _isNext ? "PREV" :
                "NEXT",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  _isNext = !_isNext;
                });
              },
            )
          : null,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(16),
          child: Center(
              child: Column(
            children: <Widget>[
              Text("WELCOME IN MIND READER GAME",
                  style: TextStyle(
                      fontSize: _isMobile ? 20 : 36, color: Colors.black)),
              SizedBox(
                height: 8,
              ),
              (!_isMobile)
                  ? Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          height: MediaQuery.of(context).size.height - 150,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: getInstructionWidget(),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          height: MediaQuery.of(context).size.height - 150,
                          child: Card(
                            child: getGridWidget(),
                          ),
                        ),
                      ],
                    )
                  : _isNext
                      ? Container(
                          width: MediaQuery.of(context).size.width - 32,
                          height: MediaQuery.of(context).size.height - 200,
                          child: Card(child: getGridWidget()),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width - 32,
                          height: MediaQuery.of(context).size.height - 200,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: getInstructionWidget(),
                            ),
                          ),
                        ),
            ],
          )),
        ),
      ),
    );
  }

  getGridWidget() {
    return GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _isMobile ? 5 : 7),
      itemBuilder: (BuildContext context, int index) {
        return GridTile(
          child: Card(
              color: Colors.blue.shade200,
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    getIconDataByIndex(index + 1),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '${index + 1}',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ))),
        );
      },
    );
  }

  getInstructionWidget() {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: Text(
          "Instructions",
          style: TextStyle(
              fontSize: _isSmallFont ? 24 : 40,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
        child: Text(
          "1. Choose a two digit number and add the digits.",
          style:
              TextStyle(fontSize: _isSmallFont ? 20 : 36, color: Colors.green),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
        child: Text(
          "2. Subtract the sum from original number",
          style:
              TextStyle(fontSize: _isSmallFont ? 20 : 36, color: Colors.green),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
        child: Text(
          "3. See the symbol related to the number you got",
          style:
              TextStyle(fontSize: _isSmallFont ? 20 : 36, color: Colors.green),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
        child: Text(
          "4. Press [check your answer] button for your symbol.",
          style:
              TextStyle(fontSize: _isSmallFont ? 20 : 36, color: Colors.green),
        ),
      ),
    ];
  }

  IconData getIconDataByIndex(int index) {
    var ran = Random();
    if (index % 9 == 0) {
      return _iconDatas[_val];
    }

    return _iconDatas[index];
  }
}
