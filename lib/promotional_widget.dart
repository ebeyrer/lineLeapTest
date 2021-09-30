import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Promotionals extends StatelessWidget {
  const Promotionals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
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
