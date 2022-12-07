import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoTile1 extends StatelessWidget {
  const PhotoTile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Creator Product
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                  'https://64.media.tumblr.com/d55a114433200c8add1d9939d6cdaa19/tumblr_inline_pidbqj4XGw1rfkqbo_500.png'),
            ),

            //Creator Name
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 2),
              child: Column(
                children: [
                  Text(
                    'Taehyung',
                    style: GoogleFonts.bebasNeue(fontSize: 30),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'With 21 Fits',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
