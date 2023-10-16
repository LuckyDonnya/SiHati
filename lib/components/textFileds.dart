import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textFiels extends StatelessWidget {
  textFiels({required this.label, required this.hintText});

  String label;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label :",
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "contoh : $hintText",
              hintStyle: GoogleFonts.poppins(
                  fontStyle: FontStyle.italic, fontSize: 11),
              border: const OutlineInputBorder(),
            ),
          )
        ],
      ),
    );
  }
}
