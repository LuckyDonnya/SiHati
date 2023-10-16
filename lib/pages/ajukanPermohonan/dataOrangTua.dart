import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihati/components/button.dart';
import 'package:sihati/components/button_permohonan.dart';
import 'package:sihati/components/textFileds.dart';
import 'package:sihati/pages/homepage.dart';
import 'package:sihati/pages/ajukanPermohonan/dataPelapor.dart';
import 'package:sihati/widgets/button_permohonan.dart';

// ignore: camel_case_types
class dataOrangTua extends StatefulWidget {
  const dataOrangTua({super.key});

  @override
  State<dataOrangTua> createState() => _dataOrangTuaState();
}

class _dataOrangTuaState extends State<dataOrangTua> {
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
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "4. Data Pelapor",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "5. Data Saksi",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "6. Unggah Dokumen",
                        btnColor: Color(0xffD9D9D9),
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
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "8. Konfirmasi 2",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "9. Konfirmasi 3",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "10. Konfirmasi 4",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "11. Konfirmasi 5",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ButtonPermohonan(
                        textButton: "12. Konfirmasi 6",
                        btnColor: Color(0xffD9D9D9),
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textFiels(
                      label: "Tanggal Perkawinan",
                      hintText: "10-19-2005",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "NIK Ayah",
                      hintText: "3326160608070197",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Nama Ayah",
                      hintText: "Muhammad Fadlan",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Tanggal Lahir Ayah",
                      hintText: "01-20-2001",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Jenis Pekerjaan Ayah",
                      hintText: "PNS",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Alamat Lengkap Ayah",
                      hintText: "jl. blang bintang lama",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "No. Surat Nikah",
                      hintText: " K7 / PW. 01 / 14 / 92",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "NIK Ibu",
                      hintText: "3326160608070197",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Nama Ibu",
                      hintText: "Halimah",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Tanggal Lahir Ibu",
                      hintText: "01-20-2001",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Jenis Pekerjaan Ibu",
                      hintText: "Ibu Rumah Tangga",
                    ),
                    SizedBox(height: 8),
                    textFiels(
                      label: "Alamat Lengkap Ibu",
                      hintText: "jl. blang bintang lama",
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
                          return dataPelapor();
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
