import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_bookingapp/home/detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyUI(),
    );
  }

  ListView bodyUI() {
    return ListView.builder(
      itemBuilder: (context, index) => Column(
        children: [
          b1(),
          b2(),
          b3(),
          b4(),
          b5(),
          b6(),
          b7(),
          b8(),
          b9(),
        ],
      ),
    );
  }

  InkWell b4() {
    return InkWell(
      onTap: (){  Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailPage()));},
          child: Container(
            height: 250.0,
            width: 500.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  child: Image.asset(
                    'assets/images/hotel1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(20),
              ),
            ),
          ),
        );
  }

  Column b9() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 6,
                blurRadius: 1,
                offset: Offset(0, 1),
                // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.only(top: 30.0, left: 20.0, bottom: 5.0),
          child: Row(
            children: [
              //SizedBox(width: 5.0,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/hotel1.png'),
                  radius: 40,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hilton Hotel",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Icon(Icons.favorite_border,
                          color: Color(
                            0xFF53599A,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 180.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "7.4 km",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "400 ₺",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 90.0,
                      ),
                      tagView("İade Garantisi", Color(0xFF53599A))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column b8() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 6,
                blurRadius: 1,
                offset: Offset(0, 1),
                // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.only(top: 30.0, left: 20.0, bottom: 5.0),
          child: Row(
            children: [
              //SizedBox(width: 5.0,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/hotel4.png'),
                  radius: 40,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bodrum Hotel",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Icon(Icons.favorite_border,
                          color: Color(
                            0xFF53599A,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 180.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "12.7 km",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "140 ₺",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 90.0,
                      ),
                      tagView("İade Garantisi", Color(0xFF53599A))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column b7() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 6,
                blurRadius: 1,
                offset: Offset(0, 1),
                // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.only(top: 30.0, left: 20.0, bottom: 5.0),
          child: Row(
            children: [
              //SizedBox(width: 5.0,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/hotel3.png'),
                  radius: 40,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "İstanbul Hotel",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Icon(Icons.favorite_border,
                          color: Color(
                            0xFF53599A,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 180.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "15.7 km",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "220 ₺",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 90.0,
                      ),
                      tagView("İade Garantisi", Color(0xFF53599A))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column b6() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 6,
                blurRadius: 1,
                offset: Offset(0, 1),
                // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.only(top: 30.0, left: 20.0, bottom: 5.0),
          child: Row(
            children: [
              //SizedBox(width: 5.0,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/hotel2.png'),
                  radius: 40,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Marmaris Hotel",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Color(
                          0xFF53599A,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 180.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "1.4 km",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "170 ₺",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 90.0,
                      ),
                      tagView(
                        "İade Garantisi",
                        Color(0xFF53599A),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container tagView(String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withAlpha(50),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 15.0),
      ),
      margin: EdgeInsets.only(right: 8, left: 0, top: 4, bottom: 4),
    );
  }

  Container b5() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 1),
            // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Yakındakiler",
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Hepsini Gör",
            style: GoogleFonts.montserrat(
                color: Color(0xFF53599A),
                fontSize: 17.0,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  Container b3() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Trend Mekanlar",
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.arrow_forward,
            // color: Colors.lightBlue,
            color: Color(0xFF53599A),
          )
        ],
      ),
    );
  }

  Column b2() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3),
                // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.all(20.0),
          child: new TextField(
            decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(40.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Colors.grey[800]),
                hintText: "Keşfet",
                fillColor: Colors.white70),
          ),
        ),
      ],
    );
  }

  Row b1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Merhaba Soner",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Otelini Bul",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0, right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF53599A).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Icon(
            Icons.favorite,
            color: Color(0xFF53599A),
          ),
          // Image.asset('assets/images/soner1.jpg',),
          height: 50.0,
          width: 50.0,
        ),
      ],
    );
  }
}
