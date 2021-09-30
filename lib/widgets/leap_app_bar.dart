import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeapAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LeapAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      backgroundColor: Color.fromRGBO(0, 0, 0, .3),
      leadingWidth: 150,
      leading: IconButton(
        iconSize: 130,
        icon: Image.asset('assets/Logo.png'),
        onPressed: () {},
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(primary: Colors.white),
              onPressed: () {},
              child: Text(
                'Brand Ambassadors',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.white),
              onPressed: () {},
              child: Text(
                'Venue Owners',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.white),
              onPressed: () {},
              child: Text(
                'Buy Passes',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ),
            IconButton(
              iconSize: 18,
              icon: Image.asset('assets/search-light.png'),
              onPressed: () {},
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Download the App'),
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
        )
      ],
    );
  }
}
