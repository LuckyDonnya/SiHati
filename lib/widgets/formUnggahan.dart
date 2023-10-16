import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class formUnggahan extends StatelessWidget {
  formUnggahan({required this.label});

  String label;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              "$label :",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  width: 230,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(10)),
                      border: Border.all(color: Colors.grey)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Pilih Dokumen",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                  )),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(10))),
                  child: Center(
                      child: Text(
                    "Browse",
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff00C968))),
                child: Text("Lihat"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
