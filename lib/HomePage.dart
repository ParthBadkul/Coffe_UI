import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui1/shop_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 8.5,
            ),
            ClipRRect(
              child: Image.asset('assets/images/pngegg.png'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Brew Day',
                style: GoogleFonts.dellaRespira(
                  color: Colors.brown[700],
                  letterSpacing: 2,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              // padding: EdgeInsets.all(7),
              child: Text(
                "   How do you like your coffee ?",
                style: GoogleFonts.dellaRespira(
                  color: Colors.brown[500],
                  letterSpacing: 2,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Shop_page();
                  },
                ));
              },
              child: Card(
                elevation: 20,
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  // color: Colors.brown[500],
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    "Enter Shop",
                    style: GoogleFonts.dekko(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.brown[800],
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
