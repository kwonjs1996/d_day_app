import 'package:d_day_app/add_d_day_screen.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D-Day-App'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print("appbar 더보기 클릭됌");
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      print("디데이 click");
                    },
                    child: Text(
                      '디데이',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  TextButton(
                    onPressed: () {
                      print("더보기 click");
                    },
                    child: Text(
                      '더보기',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('사용자명'), Icon(Icons.browser_updated)],
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "디데이가 안전하게 보관되고 있습니다.",
                  textAlign: TextAlign.start,
                )
              ],
            ),
            Container(
              height: 60,
              color: Colors.pink,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
