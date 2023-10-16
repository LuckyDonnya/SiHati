import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class statistik extends StatefulWidget {
  const statistik({super.key});

  @override
  State<statistik> createState() => _statistikState();
}

class _statistikState extends State<statistik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Text(
              "Statistik Layanan",
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 3,
                  color: Colors.grey[90],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
