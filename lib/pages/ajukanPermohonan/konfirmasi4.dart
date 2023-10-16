import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/components/button.dart';
import 'package:sihati/components/button_permohonan.dart';
import 'package:sihati/components/textFileds.dart';
import 'package:sihati/pages/homepage.dart';
import 'package:sihati/pages/ajukanPermohonan/dataPelapor.dart';
import 'package:sihati/pages/ajukanPermohonan/konfirmasi3.dart';
import 'package:sihati/pages/ajukanPermohonan/konfirmasi5.dart';
import 'package:sihati/widgets/button_permohonan.dart';
import 'package:sihati/widgets/formUnggahan.dart';

// ignore: camel_case_types
class konfirmasi4 extends StatefulWidget {
  const konfirmasi4({super.key});

  @override
  State<konfirmasi4> createState() => _konfirmasi4State();
}

class _konfirmasi4State extends State<konfirmasi4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  "Permohonan Akta Kelahiran",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )
              ]),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 17, 20, 0),
                child: Container(
                  height: 26,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ButtonPermohonan(
                        textButton: "1. Data Pemohon",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "2. Data Bayi",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "3. Data Orang tua",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "4. Data Pelapor",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "5. Data Saksi",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "6. Unggah Dokumen",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "7. Konrifmasi 1",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(width: 15),
                      ButtonPermohonan(
                        textButton: "8. Konfirmasi 2",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(width: 15),
                      ButtonPermohonan(
                        textButton: "9. Konfirmasi 3",
                        btnColor: Color(0xff3883F3),
                        ontap: () {},
                      ),
                      SizedBox(width: 15),
                      ButtonPermohonan(
                        textButton: "10. Konfirmasi 4",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(width: 15),
                      ButtonPermohonan(
                        textButton: "11. Konfirmasi 5",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
              ),
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
                    Text(
                      "Data Pelapor",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text("NIK Pelapor : "),
                        Text("3602041211870001",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Nama Pelapor : "),
                        Text("Fikri",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Jenis Kelamin Pelapor : "),
                        Text("Laki - Laki",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Jenis Pekerjaan Pelapor : "),
                        Text(
                          "Guru",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Hubungan Pelapor : "),
                        Text("Ayah",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Alamat Lengkap Pelapor : "),
                        Text(
                            "JL.Mangga Besar III No.1,\n RT 06 RW 07, GP.Bedali,\n Kec.Lawang, Kab.Malang,\n Jawa Timur",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Sebelumnya"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return konfirmasi5();
                        }),
                      );
                    },
                    child: Text("Selanjutnya"),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
