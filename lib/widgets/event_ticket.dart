import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventTicket extends StatelessWidget {
  final Image pic;
  final String title;
  final String artist;
  final String dates;
  final String location;

  EventTicket(this.title, this.artist, this.dates, this.location, this.pic);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: Card(
            color: const Color.fromRGBO(2, 23, 48, 1),
            borderOnForeground: true,
            child: Container(
              width: 300,
              height: 370,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 24, 46, 67),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //TOP IMAGE
                  AspectRatio(
                    aspectRatio: 1.75,
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: FractionalOffset.topCenter,
                          image: pic.image,
                        ),
                      ),
                    ),
                  ),

                  ////CARD INFORMATION===============================
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,

                            /// MAIN LINE
                            style: GoogleFonts.lato(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        (artist.isNotEmpty)
                            ? Text(
                                artist,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color:
                                      const Color.fromARGB(255, 92, 107, 121),
                                ),
                              )
                            : const SizedBox.shrink(),
                        (dates.isNotEmpty)
                            ? Text(
                                dates,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color:
                                      const Color.fromARGB(255, 92, 107, 121),
                                ),
                              )
                            : const SizedBox.shrink(),
                        (location.isNotEmpty)
                            ? Text(
                                location,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color:
                                      const Color.fromARGB(255, 92, 107, 121),
                                ),
                              )
                            : const SizedBox.shrink(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('From \$99'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
