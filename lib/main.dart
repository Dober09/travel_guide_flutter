import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Guide',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
        ),
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
    final mainImage = Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: Image.asset(
          'images/mountain.jpg',
          fit: BoxFit.cover,
          width: 600,
        ));
    final follows = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text(
          '41',
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
    final placeName = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Croc Mount Valley',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
        ),
        Text(
          'Mokopane, South Africa',
          style: TextStyle(color: Colors.grey, letterSpacing: .6),
        ),
      ],
    );
    final subTitle = Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [placeName, follows],
      ),
    );
    const textStyle = TextStyle(
      color: Colors.deepOrange,
    );
    final iconRow = Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: const [
              Icon(Icons.call, color: Colors.deepOrangeAccent),
              Text(
                'CALL',
                style: textStyle,
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.near_me,
                color: Colors.deepOrangeAccent,
              ),
              Text(
                'ROUTE',
                style: textStyle,
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.share,
                color: Colors.deepOrangeAccent,
              ),
              Text(
                'SHARE',
                style: textStyle,
              )
            ],
          ),
        ],
      ),
    );

    final desc = Container(
      padding:const  EdgeInsets.all(28),
      child:const Text(
          'Mount valley lies at the foot of the Croc in the Phologe '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          softWrap: true,
          style: TextStyle(
            color: Colors.grey
          ),
          ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Traval Guide'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [mainImage, subTitle, iconRow,desc],
      ),
    );
  }
}
