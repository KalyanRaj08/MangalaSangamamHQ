// ignore: file_names
import 'package:flutter/material.dart';
import 'AboutPage.dart';
import 'Animation.dart';
import 'FormPage.dart';
import 'ShowPage.dart';
import 'TermsNCPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Material(
          color: Colors.amber[100],
          child: ListView(
            children: [
              const SizedBox(height: 72),
              const Text(
                '   MENU',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              const Divider(
                color: Colors.red,
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: Colors.red,
                ),
                title: const Text(
                  'About',
                  style: TextStyle(color: Colors.black),
                ),
                hoverColor: Colors.black54,
                onTap: () {
                  Navigator.push(context, AnimatePage(widget: AboutPage()));
                },
              ),
              const Divider(
                color: Colors.red,
              ),
              ListTile(
                leading: const Icon(
                  Icons.document_scanner,
                  color: Colors.red,
                ),
                title: const Text(
                  'Terms & Conditions',
                  style: TextStyle(color: Colors.black),
                ),
                hoverColor: Colors.black54,
                onTap: () {
                  Navigator.push(context, AnimatePage(widget: TermsNCPage()));
                },
              ),
              const Divider(
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        backgroundColor: Colors.amber,
        title: const Text('Home'),
      ),
      backgroundColor: const Color.fromARGB(255, 254, 230, 158),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 5.0,
              left: 30,
              right: 30,
            ),
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 54),
                Row(
                  children: const [
                    Text(
                      'Welcome to ',
                      style: TextStyle(
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'M',
                      style: TextStyle(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Colors.amber,
                          shadows: [
                            Shadow(
                                offset: Offset(-1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                offset: Offset(1.5, -1.5), color: Colors.black),
                            Shadow(
                                offset: Offset(1.5, 1.5), color: Colors.black),
                            Shadow(
                                offset: Offset(-1.5, 1.5), color: Colors.black),
                          ],
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'angala',
                      style: TextStyle(
                          // ignore: use_full_hex_values_for_flutter_colors
                          shadows: [
                            Shadow(
                                offset: Offset(-1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                offset: Offset(1.5, -1.5), color: Colors.black),
                            Shadow(
                                offset: Offset(1.5, 1.5), color: Colors.black),
                            Shadow(
                                offset: Offset(-1.5, 1.5), color: Colors.black),
                          ],
                          color: Color(0xff17fffb0),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      ' S',
                      style: TextStyle(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Colors.amber,
                          shadows: [
                            Shadow(
                                offset: Offset(-1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                offset: Offset(1.5, -1.5), color: Colors.black),
                            Shadow(
                                offset: Offset(1.5, 1.5), color: Colors.black),
                            Shadow(
                                offset: Offset(-1.5, 1.5), color: Colors.black),
                          ],
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'angamam',
                      style: TextStyle(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color(0xffff7417),
                          shadows: [
                            Shadow(
                                offset: Offset(-1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                offset: Offset(1.5, -1.5), color: Colors.black),
                            Shadow(
                                offset: Offset(1.5, 1.5), color: Colors.black),
                            Shadow(
                                offset: Offset(-1.5, 1.5), color: Colors.black),
                          ],
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(color: Colors.black87)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
              left: 10,
              right: 10,
            ),
            color: Colors.amber[100],
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, AnimatePage(widget: FormPage()));
                },
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  child: Image.asset('images/button1.jpg'),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
              left: 10,
              right: 10,
            ),
            color: Colors.amber[100],
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, AnimatePage(widget: ShowPage()));
                },
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Image.asset('images/button2.jpg'),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Developed by KalyanRaj',
                style: TextStyle(fontSize: 10),
              ),
              Icon(
                Icons.info,
                size: 10,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
