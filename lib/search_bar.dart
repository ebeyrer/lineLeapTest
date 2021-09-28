import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 200,
      right: 200,
      child: Container(
        color: Colors.white,
        width: 400,
        height: 50,
      ),
    );
  }
}
