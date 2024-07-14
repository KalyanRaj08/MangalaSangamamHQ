// ignore: file_names
import 'package:flutter/material.dart';

import 'Animation.dart';
import 'HomePage.dart';

class TermsNCPage extends StatefulWidget {
  TermsNCPage({Key? key}) : super(key: key);

  @override
  State<TermsNCPage> createState() => _TermsNCPageState();
}

class _TermsNCPageState extends State<TermsNCPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 230, 158),
      appBar: AppBar(
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        elevation: 0,
        backgroundColor: Colors.amber,
        title: const Text('Terms & Conditions'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15, left: 15, right: 5),
        width: double.infinity,
        child: ListView(
          children: [
            const Text(
              '1. இது வணிக நோக்கம் கொண்டதல்ல ',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '2. இதில் உள்ள தகவல்கள் பதிவு செய்தவர்களின் பொறுப்பு.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '3. திருமண அமைப்பாளர்கள் இங்குள்ள பதிவுகளை பயன்படுத்தக்கூடாது. மீறி பயன்படுத்தினால் பின் விளைவுகளுக்கு மங்கள சங்கமம் பொறுப்பல்ல.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '4. திருமணம் முடிந்தவுடன் பதிவுகளை நீக்கம் செய்வது பதிந்தவர்கள் பொறுப்பு.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '5. பதிவு செய்தபின் தரப்படும் IDஐப் பயன்படுத்தி தங்களுக்கு வேண்டிய எதிர்பாலரின் தகவல்களைக் காணலாம்.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '6. IDஐ பாதுகாத்துக் கொள்வது தங்கள் பொறுப்பு.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '7. இத்தளத்தை பயன்படுத்தி வாழ்ககைத் துணையைத் தேடும் பொழுது தரவுகளின் உண்மைத் தன்மையை மற்றும் தங்கள் எதிர்நோக்கும் அனைத்தையும் தாங்களே ஒப்பு நோக்கவேண்டும். தளம் எதற்கும் பொறுப்பல்ல.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '8. இத்தளம் சேவை மனப்பான்மையாக தகவலை அளிக்க மட்டுமே அமைக்கப்பட்டுள்ளது. எவ்வித பிரதிபலனும் நோக்கமல்ல.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 40,
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
