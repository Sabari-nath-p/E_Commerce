import 'package:ecom/Constant/catl.dart';
import 'package:ecom/Constant/catp.dart';
import 'package:ecom/Constant/pcard.dart';
import 'package:ecom/Constant/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: w,
          color: Colors.white,
          height: h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xFF3B006A),
                  width: w,
                  height: w * .14,
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * .06,
                      ),
                      Text(
                        'Kottayam',
                        style: h4(),
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      )),
                      Icon(
                        Icons.wallet,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: w,
                  height: density(90),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(59, 0, 106, 1),
                      Color.fromRGBO(82, 8, 115, 0.94),
                      Color.fromRGBO(100, 15, 119, 1),
                      Color.fromRGBO(62, 0, 111, 0.86)
                    ]),
                  ),
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Positioned(
                        top: density(8),
                        left: w / 2 - 110,
                        right: density(40),
                        child: Text(
                          'Delivering To You In ',
                          style: GoogleFonts.ibmPlexMono(
                              fontSize: density(20),
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Positioned(
                        top: density(38),
                        left: w / 2 - 20,
                        right: density(40),
                        child: Text(
                          '19 ',
                          style: GoogleFonts.ibmPlexMono(
                              fontSize: density(25),
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Positioned(
                        top: density(45),
                        left: w / 2 + density(15),
                        right: density(40),
                        child: Text(
                          'min',
                          style: GoogleFonts.ibmPlexMono(
                              fontSize: density(20),
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://ik.imagekit.io/vgh0jdugx/ks8q3fmB_4x__ps72xcCo.png?ik-sdk-version=javascript-1.4.3&updatedAt=1665299617346"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://ik.imagekit.io/vgh0jdugx/ks8q3fmB_4x__ps72xcCo.png?ik-sdk-version=javascript-1.4.3&updatedAt=1665299617346"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://ik.imagekit.io/vgh0jdugx/ks8q3fmB_4x__ps72xcCo.png?ik-sdk-version=javascript-1.4.3&updatedAt=1665299617346"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://ik.imagekit.io/vgh0jdugx/ks8q3fmB_4x__ps72xcCo.png?ik-sdk-version=javascript-1.4.3&updatedAt=1665299617346"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://ik.imagekit.io/vgh0jdugx/ks8q3fmB_4x__ps72xcCo.png?ik-sdk-version=javascript-1.4.3&updatedAt=1665299617346"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: density(180.0),
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: .8,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '    Trending Near You',
                  style: h2(),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: density(220),
                    child: Row(
                      children: [pcard(), pcard(), pcard(), pcard()],
                    ),
                  ),
                ),
                SizedBox(
                  height: density(15),
                ),
                Text(
                  '    Explore By Categories',
                  style: h2(),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catl(
                        name: 'Vegetables and Fruits',
                        imgurl:
                            'https://www.freepnglogos.com/uploads/vegetables-png/fruit-and-vegetables-basket-png-20.png'),
                    catl(
                        name: 'Atta Rice and Dalda',
                        imgurl: 'https://akijflour.com/assets/img/right.png')
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catp(
                        name: 'Dairy, Bread and Eggs',
                        imgurl: 'https://akijflour.com/assets/img/right.png'),
                    catp(
                        name: 'Dairy, Bread and Eggs',
                        imgurl: 'https://akijflour.com/assets/img/right.png'),
                    catp(
                        name: 'Dairy, Bread and Eggs',
                        imgurl: 'https://akijflour.com/assets/img/right.png'),
                  ],
                ),
                Container(
                  width: w,
                  margin: EdgeInsets.all(density(20)),
                  height: density(150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(59, 0, 106, 1),
                      Color.fromRGBO(82, 8, 115, 0.94),
                      Color.fromRGBO(100, 15, 119, 1),
                      Color.fromRGBO(62, 0, 111, 0.86)
                    ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: density(18), right: density(18), top: density(20)),
                  child: Text(
                    'didn\'t find what you are looking for ? ',
                    style: TextStyle(
                        fontSize: density(40),
                        color: Colors.black38,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: w,
                  margin:
                      EdgeInsets.only(left: density(20), right: density(20)),
                  child: Text(
                    'Suggest something & we\'ll look into it',
                    style: TextStyle(
                        fontSize: density(20),
                        color: Colors.black38,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: density(180),
                  margin: EdgeInsets.only(left: density(20), top: density(30)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                          color: Color.fromRGBO(67, 3, 110, 1), width: 2)),
                  height: density(60),
                  alignment: Alignment.center,
                  child: Text(
                    'Suggest a product',
                    style: TextStyle(
                        fontSize: density(18),
                        color: Color.fromRGBO(67, 3, 110, 1),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: density(40),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  double density(
    double d,
  ) {
    double height = MediaQuery.of(context).size.height;
    double value = d * (height / 853);
    return value;
  }
}
