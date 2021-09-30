import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LeapAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LeapAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        //titleSpacing: 70,
        backgroundColor: Color.fromRGBO(0, 0, 0, .3),
        leadingWidth: 150,
        toolbarHeight: 70,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
          child: Image.asset(
            'assets/Logo.png',
            width: 160,
          ),
          // IconButton(
          //   iconSize: 300,
          //   icon: Image.asset('assets/Logo.png'),
          //   onPressed: () {},
          // ),
        ),
        // ),
        actions: [
          Container(
            // color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.only(right: 70.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.white),
                    onPressed: () =>
                        launch('https://www.lineleap.com/brand-ambassadors'),
                    child: Text(
                      'Brand Ambassadors',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      onPressed: () =>
                          launch('https://www.lineleap.com/venues'),
                      child: Text(
                        'Venue Owners',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: TextButton(
                      style: TextButton.styleFrom(primary: Colors.white),
                      onPressed: () => launch('https://lineleaptickets.com/'),
                      child: Text(
                        'Buy Passes',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: IconButton(
                      iconSize: 18,
                      icon: Image.asset('assets/search-light.png'),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: ElevatedButton(
                      onPressed: () =>
                          launch('https://www.lineleap.com/download-the-app'),
                      child: Text('Download the App'),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.white),
                    onPressed: () {},
                    child: Row(
                      children: [
                        ImageIcon(Image.asset('assets/MyAccount.png').image),
                        Text(
                          ' My Account',
                          style: GoogleFonts.lato(
                            fontSize: 18,
                          ),
                        ),
                      ],
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
