import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/components/button.dart';
import 'package:sihati/components/button_permohonan.dart';
import 'package:sihati/components/textFileds.dart';
import 'package:sihati/pages/homepage.dart';
import 'package:sihati/pages/ajukanPermohonan/dataPelapor.dart';
import 'package:sihati/pages/ajukanPermohonan/konfirmasi3.dart';
import 'package:sihati/widgets/button_permohonan.dart';
import 'package:sihati/widgets/formUnggahan.dart';

// ignore: camel_case_types
class konfirmasi2 extends StatefulWidget {
  const konfirmasi2({super.key});

  @override
  State<konfirmasi2> createState() => _konfirmasi2State();
}

class _konfirmasi2State extends State<konfirmasi2> {
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
                      "Data Bayi",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text("Tanggal Kelahiran Bayi : "),
                        Text("01-01-2001",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Jam Kelahiran Bayi : "),
                        Text("05:00 WIB",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Nama Bayi : "),
                        Text("M. Fadhlan",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Kelahiran Ke : "),
                        Text(
                          "1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Berat Bayi(kg) : "),
                        Text("3kg",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Panjang Bayi(cm) : "),
                        Text("20cm",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Jenis Kelamin Bayi : "),
                        Text("Laki-Laki",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Tempat Dilahirkan (Provinsi) : "),
                        Text("Aceh",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Tempat Dilahirkan (Kota/Kab) : "),
                        Text("Banda Aceh",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Penolong Kelahiran : "),
                        Text("Dr.Max",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Jenis Kelahiran : "),
                        Text("Normal",
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
                          return konfirmasi3();
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
