import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D-Day-App'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('디데이'),
                ),
                TextButton(onPressed: () {}, child: Text('더보기'))
              ],
            ),
            Row(
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
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
