import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_leap/widgets/socials_widget.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(70, 0, 70, 20),
        child: Row(
          children: [
            Expanded(flex: 3, child: Socials()),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Company',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact Us',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color.fromARGB(255, 92, 107, 121),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          'Brand Ambassadors',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Color.fromARGB(255, 92, 107, 121),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'About Us',
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
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Customers',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Buy Event Tickets',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color.fromARGB(255, 92, 107, 121),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Buy Gift Cards',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color.fromARGB(255, 92, 107, 121),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Refunds',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color.fromARGB(255, 92, 107, 121),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Merch',
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
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Venue Owners',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Learn More',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color.fromARGB(255, 92, 107, 121),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          'Platform',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Color.fromARGB(255, 92, 107, 121),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Pricing',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color.fromARGB(255, 92, 107, 121),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Schedule Demo',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color.fromARGB(255, 92, 107, 121),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Dashboard Login',
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
            ),
          ],
        ),
      ),
    );
  }
}
