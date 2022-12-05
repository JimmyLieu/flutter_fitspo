import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoTile extends StatelessWidget {
  const PhotoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, bottom: 125),
      child: Container(
        padding: EdgeInsets.all(6),
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[800],
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Creator Product
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                  'https://lh3.googleusercontent.com/MLvZEfn7FjVxQqwR8cMWTbBIlEuiJtEkV9zBJvrLMEjyMMyDjuUDQGqrr8QAv8qq0R_Y8ICyVnlPZxIFlDvx-anC7J7z4Fji=w1600-rj-l80-nu-e365'),
            ),

            //Creator Name
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 2),
              child: Column(
                children: [
                  Text(
                    'Jungkook',
                    style: GoogleFonts.bebasNeue(fontSize: 30),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'With 216 Fits',
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
