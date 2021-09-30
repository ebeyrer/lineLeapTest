// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class SearchBar extends StatelessWidget {
//   const SearchBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: 0,
//       left: 200,
//       right: 200,
//       child: Container(
//         color: Colors.white,
//         width: 400,
//         height: 50,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final locations = [
    'Bloomington, IN',
    'Ann Arbor, MI',
    'New York City, NY',
    'JerryCurl, IN'
  ];
  List<DropdownMenuItem<String>> get dropdownItems {
    const List<DropdownMenuItem<String>> locationItems = [
      DropdownMenuItem(
          child: Text('Bloomington, IN'), value: "Bloomington, IN"),
      DropdownMenuItem(child: Text('Ann Arbor, MI'), value: 'Ann Arbor, MI'),
      DropdownMenuItem(
          child: Text("New York City, NY"), value: "New York City, NY"),
      DropdownMenuItem(child: Text("JerryCurl, IN"), value: "JerryCurl, IN"),
    ];
    return locationItems;
  }

  String? selectedLocation;

  @override
  Widget build(BuildContext context) {
    print(selectedLocation);
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 80.0, right: 80.0),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: Colors.white,
          ),
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/search-dark.png',
                  height: 20,
                ),
              ),
              Expanded(
                flex: 20,
                child: Container(
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      hintText: 'Search Events, Venues, Artists or Passes',
                    ),
                  ),
                ),
              ),
              // Divider(
              //   thickness: 3,
              //   height: 10,
              //   color: Colors.black,
              // ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/map-pin.png',
                  height: 20,
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  // color: Colors.red,
                  child: DropdownButton<String>(
                    icon: Image.asset(
                      'assets/chevron-down.png',
                      height: 30,
                    ),
                    underline: Container(
                      color: Colors.white,
                    ),
                    elevation: 0,
                    value: selectedLocation,
                    hint: Text('All Locations'),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLocation = newValue;
                        print('change');
                        print(selectedLocation);
                      });
                    },
                    items: dropdownItems,
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      'Search',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
