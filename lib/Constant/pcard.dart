import 'package:ecom/Constant/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pcard extends StatefulWidget {
  const pcard({super.key});

  @override
  State<pcard> createState() => _pcardState();
}

class _pcardState extends State<pcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: density(24), top: density(8)),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 1, //spread radius
              blurRadius: 4, // blur radius
              offset: Offset(2, 5), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white),
      width: density(140),
      height: density(180),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            top: density(80),
            left: density(10),
            child: Text(
              'Clementies',
              style: TextStyle(
                  fontSize: density(18),
                  color: Color.fromRGBO(59, 0, 106, 1),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
              height: density(80),
              width: density(80),
              child: Image.network(
                  'https://m-hugheswholesale.co.uk/wp-content/uploads/2019/09/clementines.jpg')),
          Positioned(
            top: density(115),
            left: density(12),
            child: Text(
              '250gm',
              style: TextStyle(
                  fontSize: density(15),
                  color: Colors.black54,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: density(135),
            left: density(12),
            child: Text(
              '\$49',
              style: TextStyle(
                  fontSize: density(14),
                  color: Colors.black54,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: density(153),
            left: density(12),
            child: Text(
              '\$29',
              style: TextStyle(
                  fontSize: density(18),
                  color: Color.fromRGBO(59, 0, 106, 1),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              right: density(10),
              bottom: density(10),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 4, // blur radius
                        offset: Offset(0, 5), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.white),
                alignment: Alignment.center,
                width: density(40),
                height: density(40),
                child: Icon(
                  Icons.add,
                  size: density(35),
                ),
              ))
        ],
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
