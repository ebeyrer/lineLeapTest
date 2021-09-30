import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_leap/event_ticket.dart';
import 'package:line_leap/search_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'leap_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    const edgeInsets = const EdgeInsets.all(18.0);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: LeapAppBar(),
      //AppBar(
      //   title: Text(widget.title),
      //   backgroundColor: const Color.fromRGBO(0, 0, 0, .3),
      // ),
      body: Center(
        child: Container(
          color: const Color.fromRGBO(2, 23, 48, 1),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/HeroImage.png',
                          fit: BoxFit.cover,
                        ),
                        constraints: const BoxConstraints(maxHeight: 400),
                      ),
                      SearchBar()
                    ],
                  ),
                  EventTickets(),
                  Promotion(),
                  Container(
                    height: 200,
                    child: Row(
                      children: [
                        Expanded(child: Socials()),
                        Expanded(
                          child: Container(
                            // color: Colors.red,
                            child: Column(
                              children: [
                                Text(
                                  'Company',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Contact Us',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 92, 107, 121),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(color: Colors.greenAccent),
                        ),
                        Expanded(
                          child: Container(color: Colors.orange),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    height: 60,
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

class Socials extends StatelessWidget {
  const Socials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/Logo.png',
            width: 160,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 25,
                icon: Image.asset('assets/instagram.png'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 25,
                icon: Image.asset('assets/facebook.png'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 25,
                icon: Image.asset('assets/twitter.png'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 25,
                icon: Image.asset('assets/tiktok.png'),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            width: 160,
            child: ElevatedButton(
              onPressed: () {},
              child: Center(child: Text('Download the App')),
            ),
          ),
        ],
      ),
    );
  }
}

class Promotion extends StatelessWidget {
  const Promotion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Container(
                //color: Colors.redAccent,
                child: Stack(
                  children: [
                    Container(
                      height: 600,
                      child: Image.asset(
                        'assets/Blob.png',
                      ),
                      transform: Matrix4.translationValues(
                          -40, //MediaQuery.of(context).size.width * .1,
                          30.0,
                          0.0),
                    ),
                    Center(
                      child: Container(
                        height: 620,
                        child: Image.asset('assets/Phone.png'),
                        transform: Matrix4.translationValues(
                            -4, //MediaQuery.of(context).size.width * .1,
                            -10.0,
                            0.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ///////////////////  RIGHT SIDE OF PROMOTION///////////////////
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Own Your Night',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color.fromARGB(255, 92, 107, 121),
                      ),
                    ),
                  ),
                  Text(
                    'Download the App',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 44,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Text(
                      'Skip the line, order drinks, purchase event tickets, and much more all your favorite bars!',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Color.fromARGB(255, 92, 107, 121),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Perk(
                                header: 'LineSkip',
                                icone: Image.asset('assets/LineSkip.png'),
                                summary:
                                    'LineSkip passes let you skip long lines at ' +
                                        'your favorite bars, vanues, and events',
                              ),
                              Perk(
                                header: 'Drinks',
                                icone: Image.asset('assets/Drinks.png'),
                                summary:
                                    'Order your drinks right from your phone. No more splitting tabs or soggy receipts!',
                              ),
                              Perk(
                                header: 'Exclusive Deals',
                                icone: Image.asset('assets/Frame35.png'),
                                summary:
                                    'Use LineLeap for exclusive deals on your favorite drinks!',
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Perk(
                                header: 'Cover',
                                icone: Image.asset('assets/Cover.png'),
                                summary:
                                    'Ditch the ATM! PAy with Venmo, PayPal, or credit card using the LineLeap App.',
                              ),
                              Perk(
                                header: 'Event Tickets',
                                icone: Image.asset('assets/Events.png'),
                                summary:
                                    'Get Tickets and vip acces to dope concerts you won\' find anywhere else.',
                              ),
                              Perk(
                                header: 'Reservations',
                                icone: Image.asset('assets/Reservations.png'),
                                summary:
                                    'Savve your spot in line or grab the perfect table in seconds.',
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Image.asset('assets/Google Play.png'),
                        iconSize: 150,
                        onPressed: () => launch(
                            'https://play.google.com/store/apps/details?id=io.Lineleap'),
                      ),
                      IconButton(
                        icon: Image.asset('assets/App Store.png'),
                        iconSize: 150,
                        onPressed: () => launch(
                            'https://apps.apple.com/us/app/lineleap/id960804043'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Perk extends StatelessWidget {
  final Image icone;
  final String header;
  final String summary;

  const Perk({
    Key? key,
    required this.icone,
    required this.header,
    required this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageIcon(
            icone.image,
            size: 40,
            color: Colors.blue,
          ),
          Container(
            width: 220,
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      header,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      summary,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Color.fromARGB(255, 92, 107, 121),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EventTickets extends StatelessWidget {
  const EventTickets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool viewButton = true;
    return Padding(
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
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("test"),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(400, 40),
                  primary: Color.fromARGB(255, 50, 69, 88),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
