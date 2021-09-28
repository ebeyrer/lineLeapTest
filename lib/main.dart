import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_leap/event_ticket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LineLeapDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'LineLeap Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromRGBO(0, 0, 0, .3),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                color: const Color.fromRGBO(2, 23, 48, 1),
                child: Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/HeroImage.png'),
                          Positioned(
                            bottom: 0,
                            left: 200,
                            right: 200,
                            child: Container(
                              color: Colors.white,
                              width: 400,
                              height: 50,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Event Tickets',
                            style: GoogleFonts.lato(
                                fontSize: 32, color: Colors.white),
                          ),
                          Row(
                            children: [
                              EventTicket(
                                  'Diplo',
                                  'August 26, 6:00 PM +2 more',
                                  "Champs Downtown • State College, PA",
                                  Image.asset('assets/EventImage1.png'),
                                  "Diplo Presents"),
                              EventTicket(
                                  'Diplo',
                                  'August 26, 6:00 PM +2 more',
                                  "Champs Downtown • State College, PA",
                                  Image.asset('assets/EventImage2.png'),
                                  "Diplo Presents"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
