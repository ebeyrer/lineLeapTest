import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'event_ticket.dart';

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
