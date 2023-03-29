import 'package:flutter/material.dart';
import 'models/Coffe_class.dart';
import 'package:google_fonts/google_fonts.dart';

class Shop_page extends StatelessWidget {
  // const Shop_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(236, 226, 160, 0.794),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 22,
                      color: Colors.white54,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.search,
                      size: 22,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 14,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 15),
              child: Text(
                "   How do you like your coffee ?",
                style: GoogleFonts.dellaRespira(
                  color: Colors.brown[500],
                  letterSpacing: 2,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 14,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              width: MediaQuery.of(context).size.width / 1.2,
              // color: Colors.red,
              child: ListView.builder(
                itemCount: coffees.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Opacity(
                      opacity: 0.65,
                      alwaysIncludeSemantics: true,
                      child: Card(
                        shadowColor: Colors.brown[800],
                        elevation: 40,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 10,
                              ),
                              height: 60,
                              width: 40,
                              child: Image.asset(coffees[index].imageUrl),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10, left: 10),
                                  margin: EdgeInsets.only(
                                    // bottom: 20,
                                    left: 10,
                                  ),
                                  child: Text(
                                    coffees[index].name,
                                    style: GoogleFonts.dellaRespira(
                                      letterSpacing: 1.3,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.brown[400],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  margin: EdgeInsets.only(
                                    // bottom: 20,
                                    left: 10,
                                  ),
                                  child: Text(
                                    "\$ ${coffees[index].price}",
                                    style: GoogleFonts.dellaRespira(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black38,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              // color: Colors.amberAccent,
              height: MediaQuery.of(context).size.height / 13,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Card(
                          elevation: 1,
                          color: Color.fromRGBO(236, 226, 160, 0.361),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                hoverColor: Colors.amberAccent,
                              ),
                              Container(
                                width: 40,
                                padding: EdgeInsets.only(top: 5),
                                margin: EdgeInsets.only(right: 10),
                                child: Text(
                                  'Home',
                                  style: GoogleFonts.dellaRespira(
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 1),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shop,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
