import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventTicket extends StatelessWidget {
  final Image pic;
  final String title;
  final String artist;
  final String dates;
  final String location;

  EventTicket(this.artist, this.dates, this.location, this.pic, this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: const Color.fromRGBO(2, 23, 48, 1),
      borderOnForeground: true,
      child: Container(
        width: 300,
        height: 400,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 24, 46, 67),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          children: [
            pic,
            Text(
              title,

              /// MAIN LINE
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              ///INFO
              artist + '\n' + dates + '\n' + location,
              //'Diplo\nFri, August 26, 6:00 PM +2 more\nChamps Downtown • State College, PA',
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Color.fromARGB(255, 92, 107, 121),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
