import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Legal extends StatelessWidget {
  const Legal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(19, 47, 69, 1),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  '© LineLeap 2020',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Color.fromARGB(255, 92, 107, 121),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () => launch(
                      'https://www.lineleap.com/privacy-policy-and-terms-conditions'),
                  child: Text(
                    'Privacy Policy',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Color.fromARGB(255, 92, 107, 121),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () => launch(
                      'https://www.lineleap.com/privacy-policy-and-terms-conditions'),
                  child: Text(
                    'Terms & Conditions',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Color.fromARGB(255, 92, 107, 121),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
