import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/pages/ajukanPermohonan/konfirmasi2.dart';
import 'package:sihati/widgets/button_permohonan.dart';

// ignore: camel_case_types
class konfirmasi1 extends StatefulWidget {
  const konfirmasi1({super.key});

  @override
  State<konfirmasi1> createState() => _konfirmasi1State();
}

class _konfirmasi1State extends State<konfirmasi1> {
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
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(width: 15),
                      ButtonPermohonan(
                        textButton: "8. Konfirmasi 2",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(width: 15),
                      ButtonPermohonan(
                        textButton: "9. Konfirmasi 3",
                        btnColor: Color(0xffD9D9D9),
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
                      SizedBox(width: 15),
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
                      "Data Pemohon",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text("Nama Kepala Keluarga Pemohon : "),
                        Text("Lucky Donya",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("NIK Kepala Keluarga Pemohon : "),
                        Text("123456789098",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("No KK(Kartu Keluarga) Pemohon : "),
                        Text("123456789098",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("No. HP yang dapat dihubungi : "),
                        Text(
                          "015269785432",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Email Pemohon : "),
                        Text("luckydonya@gmail.com",
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
                          return konfirmasi2();
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
