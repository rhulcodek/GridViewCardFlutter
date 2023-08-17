import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  List<String> images = [
    "https://d3nn873nee648n.cloudfront.net/900x600/100117/300-ZM1027221.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/3848/20-BG117636.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17799/220-LA788644.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17289/220-SQ761793.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/100117/300-ZM1027221.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/3848/20-BG117636.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17799/220-LA788644.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17289/220-SQ761793.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/100117/300-ZM1027221.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/3848/20-BG117636.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17799/220-LA788644.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17289/220-SQ761793.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/100117/300-ZM1027221.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/3848/20-BG117636.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17799/220-LA788644.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17289/220-SQ761793.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/100117/300-ZM1027221.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/3848/20-BG117636.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17799/220-LA788644.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17289/220-SQ761793.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/100117/300-ZM1027221.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/3848/20-BG117636.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17799/220-LA788644.jpg",
    "https://d3nn873nee648n.cloudfront.net/900x600/17289/220-SQ761793.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 10.0,
                color: Color(0xff0c0c0c),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    Image.network(images[index]),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        "Nature is not a place to visit, it is home",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Color(0xffe8efe8)),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
