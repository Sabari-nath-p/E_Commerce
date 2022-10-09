import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class catl extends StatefulWidget {
  String name, imgurl;
  catl({super.key, required this.name, required this.imgurl});

  @override
  State<catl> createState() => _catlState(name: name, imgurl: imgurl);
}

class _catlState extends State<catl> {
  String name, imgurl;
  _catlState({required this.imgurl, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: density(170),
      margin: EdgeInsets.only(
          left: density(10), right: density(10), top: density(30)),
      height: density(130),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(248, 229, 250, 1)),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Positioned(
            top: density(10),
            child: SizedBox(
              width: density(140),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: density(18),
                    color: Color.fromRGBO(59, 0, 106, 1),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Positioned(
              bottom: 5,
              child: SizedBox(
                  width: density(160),
                  height: density(75),
                  child: Image.network(
                    imgurl,
                    fit: BoxFit.fitHeight,
                  )))
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
