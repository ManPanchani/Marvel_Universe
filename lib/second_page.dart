import 'package:flutter/material.dart';

class Second_page extends StatefulWidget {
  const Second_page({Key? key}) : super(key: key);

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    Map Data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Marvel character",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/");
            });
          },
          child: const Center(
            child: Text(
              "<",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 30,
              ),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff10002B),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: h * 0.6,
                width: w,
                decoration: const BoxDecoration(
                  color: Colors.white60,
                ),
                child: ClipRRect(
                  child: Image(
                    image: AssetImage("${Data['images']}"),
                    height: h * 0.5,
                    width: w * 0.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${Data['ComicName']}",
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "${Data['RealName']}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "${Data['Description']}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Container(
                height: h * 0.6,
                width: w,
                decoration: const BoxDecoration(
                  color: Colors.white60,
                ),
                child: ClipRRect(
                  child: Image(
                    image: AssetImage("${Data['actions']}"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
