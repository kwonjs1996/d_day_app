import 'package:d_day_app/screen1.dart';
import 'package:flutter/material.dart';

import 'add_d_day_screen.dart';

class Main_screen extends StatelessWidget {
  const Main_screen({Key? key}) : super(key: key);

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
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Center(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.expand_more),
                  label: Text('전체'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('공유'),
                ),
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
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddDDayScreen(),
              ));
          print("add button clicked");
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
