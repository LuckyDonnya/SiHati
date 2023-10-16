import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sihati/pages/login.dart';

// ignore: must_be_immutable
class buttonPermohonan extends StatelessWidget {
  String name;
  String name2;
  buttonPermohonan(
      {required this.ontap, required this.name, required this.name2});

  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
        height: 100,
        width: 388,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xffF4F4F4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/logokominfo.png",
                  height: 41,
                  width: 31,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff3883F3)),
                    ),
                    Text(
                      name2,
                      style: GoogleFonts.poppins(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: ontap,
              child: Container(
                padding:
                    EdgeInsets.only(top: 5, bottom: 5, left: 11, right: 11),
                decoration: BoxDecoration(
                    color: Color(0xFF3883F3),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "       Ajukan\nPermohonan",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 9,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
