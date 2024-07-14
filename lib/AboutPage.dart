// ignore: file_names
import 'package:flutter/material.dart';

import 'Animation.dart';
import 'HomePage.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 230, 158),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              await Future.delayed(const Duration(milliseconds: 100), () {});
              Navigator.push(context, AnimatePage(widget: HomePage()));
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        elevation: 0,
        backgroundColor: Colors.amber,
        title: const Text('About'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15, left: 15, right: 5),
        width: double.infinity,
        child: ListView(
          children: [
            const Text(
              'உலகத்தோற்றத்தின் மூத்தக்குடி தமிழ்க்குடி மரபின் வழியினர் நம் வணிக சமூகத்தினர். கால சுழற்சியில் நம்மினத்தை ஒன்றிணைக்கும் நம் சமூக சங்கங்களின் நோக்கத்தில் ஒரு பகுதியாக 2000 மாவது ஆண்டு "சங்கமம்" தோன்றியது. இதவரை சங்கமத்தின் சேவையால் பல்லாயிரம் திருமணங்கள் நம்மணமக்களிடையே நடந்துள்ளன தற்போது எங்கிருந்தும் தொடர்பு கொள்ள ஏதுவாக மங்கள சங்கமம் எனும் Youtube தளம் தொடங்கப்பட்டு இன்று விரிவாக்கம் செய்யப்பட்டுள்ளது.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 400,
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
      ),
    );
  }
}
