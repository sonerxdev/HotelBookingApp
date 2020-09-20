import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:hotel_bookingapp/home/home_page.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyUI(),
      bottomNavigationBar: bottomUI(),
    );
  }

  ClipRRect bottomUI() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        backgroundColor: Color(
          0xFF53599A,
        ),
        elevation: 5.0,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.minimize,
              size: 40.0,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.add,
              size: 40.0,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.hotel,
              size: 40.0,
            ),
            title: new Text(
              'Kirala',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
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
        ],
      ),
    );
  }

  Container b5() {
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Text(
        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan dignissim massa at molestie. Morbi volutpat justo quis diam egestas, non mattis lacus hendrerit. Pellentesque rhoncus fringilla nulla mollis feugiat. Vivamus pellentesque et eros et vulputate. Donec at interdum erat. Duis id pretium elit. Curabitur vulputate, nibh quis vestibulum vehicula, leo ex viverra nulla, a hendrerit leo diam in orci. Integer eu pulvinar lectus. Donec ornare nisl eu enim eleifend hendrerit.

Phasellus quis magna consequat, rutrum orci vitae, molestie nulla. Donec condimentum massa vitae neque elementum luctus. Sed diam libero, ultrices in fringilla sed, posuere vitae dolor. Nulla non rutrum quam. Sed a fermentum velit, ac tempus ante. Nulla bibendum sem quam, ut mattis est vehicula nec. Integer vestibulum ut sapien eu gravida. Nulla facilisi. Vestibulum tristique ligula in eleifend gravida. Morbi mattis faucibus massa eget posuere. Pellentesque id ullamcorper tortor. Mauris efficitur at nunc quis porttitor. Cras sed velit et risus scelerisque interdum.

Phasellus iaculis, enim sit amet aliquet tempus, metus ipsum mattis risus, non accumsan turpis eros sed ante. Suspendisse potenti. Nulla facilisi. Suspendisse scelerisque iaculis efficitur. Sed suscipit, velit non finibus ornare, sapien diam feugiat nibh, at ultricies tellus libero vel ipsum. Morbi interdum iaculis velit vitae congue. Vivamus hendrerit dignissim lorem ut imperdiet. Phasellus nec finibus dolor, a vestibulum orci. Nulla pellentesque tempus ex a gravida.

Aenean euismod ligula odio, vel consequat sem interdum vel. Nam porta tellus at leo lobortis, quis pulvinar purus euismod. Sed metus enim, malesuada a diam a, finibus bibendum diam. Etiam pellentesque ante a sem tincidunt laoreet. In lacinia accumsan risus non pharetra. Sed et lorem eget elit semper condimentum sed at velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc eu sodales nunc, non posuere odio. Praesent feugiat nisl nunc, et condimentum tellus eleifend at.

Fusce a interdum turpis. Aenean sed enim nec magna mattis posuere et eu est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elit nibh, egestas vel accumsan vitae, pharetra at risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nec nunc ut nisi vestibulum commodo quis id eros. Aliquam congue fermentum felis non ultrices. Mauris quis sodales justo, a fermentum mi. Nunc vulputate convallis mi sit amet lacinia. Donec ut libero non sapien interdum viverra. Vivamus accumsan sem nec bibendum venenatis. Sed congue pharetra imperdiet.''',
        softWrap: true,
        style: GoogleFonts.montserrat(
            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w300),
      ),
    );
  }

  Container b4() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Vanilya Oda",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70.0),
                child: Text(
                  "7. Kat",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Text(
              "700₺",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            "/Gecelik",
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  Container b3() {
    return Container(
      height: 60.0,
      width: 500.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Opacity(
            opacity: 0.99,
            child: Container(
              height: 70.0,
              width: 140.0,
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ücretsiz Wifi"),
                    Icon(Icons.wifi),
                  ],
                ),
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Container b2() {
    return Container(
      height: 400.0,
      width: 350.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Opacity(
            opacity: 0.99,
            child: Container(
              height: 400.0,
              width: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(
                    "assets/images/hotel4.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Chip(
                        label: new Text("Oturma Odası"),
                        backgroundColor: Colors.white70,
                      ),
                    ]),
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Container b1() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
