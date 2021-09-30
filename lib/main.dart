import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_leap/widgets/footer_widget.dart';
import 'package:line_leap/widgets/legal_footer_widget.dart';
import 'package:line_leap/widgets/promotional_widget.dart';
import 'package:line_leap/widgets/search_bar_widget.dart';
import 'package:line_leap/widgets/ticket_promos.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/leap_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LineLeapDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'LineLeap Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const LeapAppBar(),
      body: Center(
        child: Container(
          color: const Color.fromRGBO(2, 23, 48, 1),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/HeroImage.png',
                        fit: BoxFit.cover,
                      ),
                      //constraints: const BoxConstraints(maxHeight: 400),
                    ),
                    const SearchBar()
                  ],
                ),
                const EventTickets(),
                const Promotionals(),
                const Footer(),
                const Legal()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
