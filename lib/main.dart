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

  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
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
        child: Container(
          color: const Color.fromRGBO(2, 23, 48, 1),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Positioned(
                    top: 0,
                    child: Stack(
                      children: [
                        Container(
                          child: Image.asset('assets/HeroImage.png'),
                          constraints: const BoxConstraints(maxHeight: 400),
                        ),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70, 50, 70, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0, left: 8),
                          child: Text(
                            'Event Tickets',
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w900,
                                fontSize: 32,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            EventTicket(
                              "Diplo Presents: Higher Ground",
                              'Diplo',
                              'August 26, 6:00 PM +2 more',
                              "Champs Downtown • State College, PA",
                              Image.asset('assets/EventImage1.png'),
                            ),
                            EventTicket(
                              'Trippie Redd - Neon Shark Live',
                              "Trippie REdd",
                              "Fri, August 26, 6:00 PM +2 more",
                              "Rick's American Cafe • Ann Arbor, MI",
                              Image.asset('assets/EventImage2.png'),
                            ),
                            EventTicket(
                              'Kacey Musgraves - oh, what a word: tour II',
                              'Kacey Musgraves, Maggie Rogers, Yola',
                              'Fri, August 26, 6:00 PM +2 more',
                              "Bridgestone Arena • Nashville, TN",
                              Image.asset('assets/EventImage3.png'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            EventTicket(
                              "Diplo Presents: Higher Ground",
                              'DOSK',
                              'August 26, 6:00 PM +2 more',
                              "Champs Downtown • State College, PA",
                              Image.asset('assets/EventImage4.png'),
                            ),
                            EventTicket(
                              'Diplo Presents: Higher Ground',
                              'Wale',
                              'August 26, 6:00 PM +2 more',
                              "Champs Downtown • State College, PA",
                              Image.asset('assets/EventImage5.png'),
                            ),
                            EventTicket(
                              'Back to School Bar Crawl',
                              "",
                              "Fri, August 26, 6:00 PM +2 more",
                              "Champs Downtown • State College, PA",
                              Image.asset('assets/EventImage6.png'),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
