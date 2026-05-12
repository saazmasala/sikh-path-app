import 'package:flutter/material.dart';
import '../data/japji_sahib.dart';
import '../data/chaupai_sahib.dart';
import '../data/dukh-bhanjani.dart';
import '../data/sukhmanisahib.dart';
import '../data/anandsahib.dart';
import '../data/jaap_sahib.dart';

class ReaderPage extends StatefulWidget {
  final String title;

  const ReaderPage({
    super.key,
    required this.title,
  });

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {

  String selectedLanguage = "Hindi";

  Map<String, String> get pathData {

    switch (widget.title) {

      case "Japji Sahib":
        return japjiSahib;
      case "Chaupai Sahib":
        return chaupaisahib;
      case "Dukh Bhanjani Sahib":
        return dukhbhanjani;
      case "Sukhmani Sahib":
        return sukhmanisahib;
      case "Anand Sahib":
        return anandsahib;
      case "Jaap Sahib":
        return jaapsahib;
      default:
        return japjiSahib;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(

        backgroundColor: Colors.orange,

        title: Text(widget.title),

        actions: [

          Padding(

            padding: const EdgeInsets.only(right: 12),

            child: DropdownButton<String>(

              value: selectedLanguage,

              dropdownColor: Colors.black,

              underline: const SizedBox(),

              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),

              items: const [

                DropdownMenuItem(
                  value: "Hindi",
                  child: Text("Hindi"),
                ),

                DropdownMenuItem(
                  value: "Punjabi",
                  child: Text("Punjabi"),
                ),

                DropdownMenuItem(
                  value: "English",
                  child: Text("English"),
                ),
              ],

              onChanged: (value) {

                setState(() {

                  selectedLanguage = value!;

                });

              },
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Text(

          pathData[selectedLanguage]!,

          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
            height: 1.8,
          ),
        ),
      ),
    );
  }
}
