import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sihati/menu.dart';

class dtAktaKematian extends StatefulWidget {
  const dtAktaKematian({super.key});

  @override
  State<dtAktaKematian> createState() => _dtAktaKematianState();
}

class _dtAktaKematianState extends State<dtAktaKematian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(children: [
          Padding(
              padding: EdgeInsets.only(
            right: 20,
          )),
          InkWell(
            child: Icon(Icons.keyboard_backspace),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Permohonan Akta Kematian",
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ]),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Nama Bayi                     : "),
                  Text("Max", style: TextStyle(fontWeight: FontWeight.bold))
                ],
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
              Row(
                children: [
                  Text("Tanggal Pengajuan      : "),
                  Text("20 Maret 1997",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
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
              Row(
                children: [
                  Text("Nama Pelapor               : "),
                  Text("Fulani", style: TextStyle(fontWeight: FontWeight.bold))
                ],
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
              Row(
                children: [
                  Text("NIK Pelapor                   : "),
                  Text("2020202022020",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
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
              Row(
                children: [
                  Text("Keterangan                    : "),
                  Text("Fulani", style: TextStyle(fontWeight: FontWeight.bold))
                ],
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
              Row(
                children: [
                  Text("Status                             : "),
                  Text("Fulani", style: TextStyle(fontWeight: FontWeight.bold))
                ],
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
              Row(
                children: [
                  Text("Aksi                                 : "),
                  Text("Fulani", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
