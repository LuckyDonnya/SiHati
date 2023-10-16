import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPermohonan extends StatelessWidget {
  ButtonPermohonan(
      {required this.textButton, required this.ontap, this.btnColor});

  String textButton;
  void Function()? ontap;
  Color? btnColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: 114,
          decoration: BoxDecoration(
              color: btnColor, borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            textButton,
            style: GoogleFonts.poppins(fontSize: 11, color: Colors.black38),
          )),
        ),
      ),
    );
  }
}
