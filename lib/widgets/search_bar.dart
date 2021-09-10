import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/responsiveness.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final void Function()? onTap;

  const SearchBar({
    Key? key,
    this.controller,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: ResponsiveWidget.isLargeScreenSize(context) ? 573 : 300,
          height: 32,
          color: Color(0xFF121212),
          child: Align(
            alignment: Alignment.center,
            child: TextField(
              controller: this.controller,
              style: GoogleFonts.poppins(fontSize: 16),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white24,
                ),
                contentPadding: EdgeInsets.only(left: 16, bottom: 16),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: this.onTap,
          child: Container(
            width: 64,
            height: 32,
            color: Color(0xFF313131),
            child: Align(
              child: Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
