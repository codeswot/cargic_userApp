import 'package:cargig_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CargicOnbordingData extends StatefulWidget {
  final imagePath;
  final title;
  final desc;

  CargicOnbordingData({this.imagePath, this.title, this.desc});

  @override
  _CargicOnbordingDataState createState() =>
      _CargicOnbordingDataState(this.imagePath, this.title, this.desc);
}

class _CargicOnbordingDataState extends State<CargicOnbordingData> {
  final imagePath;
  final title;
  final desc;
  _CargicOnbordingDataState(this.imagePath, this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: CargicColors.brandBlue,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              imagePath,
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              desc,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: CargicColors.outwitBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
