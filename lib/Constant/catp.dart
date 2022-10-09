import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class catp extends StatefulWidget {
  String name, imgurl;
  catp({super.key, required this.name, required this.imgurl});

  @override
  State<catp> createState() => _catpState(name: name, imgurl: imgurl);
}

class _catpState extends State<catp> {
  String name, imgurl;
  _catpState({required this.imgurl, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: density(110),
      margin: EdgeInsets.only(
          left: density(6), right: density(9), top: density(20)),
      height: density(160),
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
              width: density(90),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: density(18),
                    color: Color.fromRGBO(59, 0, 106, 1),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Positioned(
              bottom: density(5),
              child: SizedBox(
                  width: density(100),
                  height: density(110),
                  child: Image.network(imgurl)))
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
