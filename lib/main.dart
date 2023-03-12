import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two Page Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            alignment: Alignment.topRight,
            child: TextButton(
              child: const Text('Skip',
                  style: TextStyle(
                      color: Color(0xffA9A7A7),
                      fontFamily: 'Nunito',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.41)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
            ),
          ),
          Image.asset('assets/images/hi.png', width: 350),
          SizedBox(height: 30),
          Container(
            child: Text('Welcome',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    fontSize: 40)),
          ),
          SizedBox(height: 20),
          Container(
            child: Text(
                'There are so many things you have to \nexperience in your life...',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.41)),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            alignment: Alignment.topRight,
            child: TextButton(
              child: const Text('Skip',
                  style: TextStyle(
                      color: Color(0xffA9A7A7),
                      fontFamily: 'Nunito',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.41)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
            ),
          ),
          Image.asset('assets/images/goodjob.png', width: 270),
          Container(
            child: Text('MyDay team',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    fontSize: 40)),
          ),
          SizedBox(height: 50),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
                'prepared for you list of tasks to keep yourself busy and challenged every day, making it more fun and enjoyable',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.41)),
          )
        ],
      ),
    );
  }
}
