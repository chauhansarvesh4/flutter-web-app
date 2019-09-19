import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height;
  double _width;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    print("height = $_height");
    print("width = $_width");

    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(16),
        child: Center(
            child: Column(
          children: <Widget>[
            Text("WELCOME IN MIND READER GAME",
                style: TextStyle(fontSize: 40, color: Colors.greenAccent)),
            (_width > 700)
                ? Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 16,
                        height: MediaQuery.of(context).size.height - 150,
                        child: Card(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 16,
                        height: MediaQuery.of(context).size.height - 150,
                        child: Card(),
                      ),
                    ],
                  )
                : Container(
                    width: MediaQuery.of(context).size.width - 32,
                    height: MediaQuery.of(context).size.height - 200,
                    child: Card(),
                  ),
          ],
        )),
      ),
    );
  }
}
