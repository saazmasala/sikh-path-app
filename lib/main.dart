import 'package:flutter/material.dart';
import 'screens/reader_page.dart';

void main() {
  runApp(const SikhPathApp());
}

class SikhPathApp extends StatelessWidget {
  const SikhPathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nitnem Path',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> paths = const [
    {
      "title": "Japji Sahib",
      "subtitle": "ਜਪੁਜੀ ਸਾਹਿਬ"
    },
    {
      "title": "Jaap Sahib",
      "subtitle": "ਜਾਪ ਸਾਹਿਬ"
    },
    {
      "title": "Chaupai Sahib",
      "subtitle": "ਚੌਪਈ ਸਾਹਿਬ"
    },
    {
      "title": "Dukh Bhanjani Sahib",
      "subtitle": "ਦੁਖ ਭਾਨਜਾਨੀ ਸਾਹਿਬ"
    },
    {
      "title": "Sukhmani Sahib",
      "subtitle": "ਸੁਖਮਨੀ ਸਾਹਿਬ"
    },
    {
      "title": "Anand Sahib",
      "subtitle": "ਆਨੰਦ ਸਾਹਿਬ"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Nitnem Path"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: paths.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(20),
              title: Text(
                paths[index]["title"]!,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  paths[index]["subtitle"]!,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
             onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ReaderPage(
        title: paths[index]["title"]!,
      ),
    ),
  );
},
            ),
          );
        },
      ),
    );
  }
}
