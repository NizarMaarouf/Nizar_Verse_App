
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Verse extends StatefulWidget {
  const Verse({super.key});

  @override
  State<Verse> createState() => _VerseState();
}

class _VerseState extends State<Verse> {
  List verse = [
    ({
      "line1": "لا تشكُ للناسِ جرحاً أنتَ صاحبهُ",
      "line2": "لا يؤلمُ الجرحَ إلا منْ به ألمُ"
    }),
    {
      "line1": "شَكْوَاكَ لِلنَّاسِ يا ابنَ النَّاس منْقصَةٌ",
      "line2": "ومَن مِنَ النَّاسِ صَاحِ مَا بِهِ سَقَمُ"
    },
    {
      "line1": "فَإِنْ شَكَوْتَ لِمَنْ طَابَ الزَّمَانُ لَهُ",
      "line2": "عَيْنَاكَ تَغْلِي وَمَنْ تَشْكُو لَهُ صَنَمُ"
    },
    {
      "line1": "وَإِذَا شَكَوْتَ لِمَنْ شَكْوَاكَ تُسْعِدُهُ",
      "line2": "أَضَفْتَ جُرْحًا لِجُرْحِكَ اِسْمُهُ النَّدَمُ"
    },
    {
      "line1": "هل المواساه يوماً حرت وطناً",
      "line2": "أم التعازى بديل ان هو العلمُ"
    },
    {
      "line1": "من يندب الحظ يطفئ عين همته",
      "line2": "لاعين للحظ أن لم تبصر الهمم"
    },
    {
      "line1": "وَمِنْ سِوَى اللهِ نَأْوِي تَحْتَ سِدْرَتِهِ",
      "line2": "وَنَسْتَغِيثُ بِهِ عَوِّنَا وَنَعْتَصِمُ"
    },
    {
      "line1": "كُن فَيْلَسُوفًَا ترى أنَّ الجميعَ هُنَا",
      "line2": "يتقاتلون على عَدَمٍ وهُم عَدَمُ!!"
    },
  ];

  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('First App'),
          centerTitle: true,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
             Icon(Icons.face),
             SizedBox(
              width: 20,
             ),
            Icon(Icons.menu),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                verse[myIndex]["line1"],
                style: TextStyle(
                  fontSize: 30,fontFamily: 'myfont1',
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                verse[myIndex]["line2"],
                style: TextStyle(
                  fontSize: 25,fontFamily: 'myfont1',
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                         if (myIndex == 0) {
                          myIndex = verse.length-1;
                        }else{  myIndex--;}
                      
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.arrow_left,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                         if (myIndex == verse.length-1) {
                              myIndex = 0;
                        }else{myIndex++;}
                        
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.arrow_right,
                      size: 40,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
