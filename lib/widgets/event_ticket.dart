import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromRGBO(19, 47, 69, 1),
          borderOnForeground: true,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TOP IMAGE
                AspectRatio(
                  aspectRatio: 1.75,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: FractionalOffset.topCenter,
                        image: pic.image,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    constraints: BoxConstraints(minHeight: 100),
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
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: ElevatedButton(
                              onPressed: () =>
                                  launch('https://linktr.ee/LineLeap'),
                              child: Text('From \$99'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
